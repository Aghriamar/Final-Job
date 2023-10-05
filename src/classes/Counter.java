package classes;

/**
 * Класс представляет счетчик для отслеживания количества действий.
 * Данный класс реализует интерфейс AutoCloseable для корректной работы
 * с блоком try-with-resources и гарантированного закрытия счетчика.
 */
public class Counter implements AutoCloseable {
    private int count;

    /**
     * Конструктор для создания счетчика с начальным значением 0.
     */
    public Counter() {
        count = 0;
    }

    /**
     * Метод для увеличения значения счетчика на 1.
     */
    public void add() {
        count++;
    }

    /**
     * Метод для получения текущего значения счетчика.
     *
     * @return Текущее значение счетчика.
     */
    public int getCount() {
        return count;
    }

    /**
     * Метод для закрытия счетчика. Проверяет, что счетчик был закрыт корректно
     * в блоке try-with-resources и генерирует исключение, если счетчик остался открытым.
     *
     * @throws IllegalStateException Если счетчик остался открытым.
     */
    @Override
    public void close() throws Exception {
        if (count > 0) {
            throw new IllegalStateException("Счетчик не был закрыт. Завершите работу с ним в блоке try-with-resources.");
        }
    }
}
