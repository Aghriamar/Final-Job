package classes;

import java.util.ArrayList;
import java.util.List;

/**
 * Абстрактный класс представляет животное.
 * Этот класс определяет основные характеристики животных, такие как имя, тип и список команд.
 */
public abstract class Animal {
    private String name;
    private String type;
    private List<String> commands;

    /**
     * Конструктор для создания экземпляра животного с указанными параметрами.
     *
     * @param name    Имя животного.
     * @param type    Тип животного (домашнее или вьючное).
     * @param command Начальная команда, которую выполняет животное.
     */
    public Animal(String name, String type, String command) {
        this.name = name;
        this.type = type;
        this.commands = new ArrayList<>();
        this.commands.add(command);
    }

    /**
     * Метод для получения имени животного.
     *
     * @return Имя животного.
     */
    public String getName() {
        return name;
    }

    /**
     * Метод для получения типа животного (домашнее или вьючное).
     *
     * @return Тип животного.
     */
    public String getType() {
        return type;
    }

    /**
     * Метод для получения списка команд, которые выполняет животное.
     *
     * @return Список команд.
     */
    public List<String> getCommands() {
        return commands;
    }

    /**
     * Метод для добавления новой команды в список команд животного.
     *
     * @param newCommand Новая команда для животного.
     */
    public void setCommand(String newCommand) {
        this.commands.add(newCommand);
    }
}

