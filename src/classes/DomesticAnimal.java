package classes;

/**
 * Класс представляет домашнее животное.
 * Этот класс наследует базовые характеристики животного из класса Animal.
 */
public class DomesticAnimal extends Animal {
    /**
     * Конструктор для создания домашнего животного.
     *
     * @param name    Имя животного.
     * @param type    Тип животного (домашнее или вьючное).
     * @param command Команда, которую выполняет животное.
     */
    public DomesticAnimal(String name, String type, String command) {
        super(name, type, command);
    }
}
