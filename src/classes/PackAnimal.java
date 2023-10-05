package classes;

/**
 * Класс представляет вьючное животное.
 * Этот класс наследует базовые характеристики животного из класса Animal.
 */
public class PackAnimal extends Animal {
    /**
     * Конструктор для создания вьючного животного.
     *
     * @param name    Имя животного.
     * @param type    Тип животного (домашнее или вьючное).
     * @param command Команда, которую выполняет животное.
     */
    public PackAnimal(String name, String type, String command) {
        super(name, type, command);
    }
}
