import classes.Animal;
import classes.Counter;

import java.util.*;

/**
 * Главный класс программы для управления реестром домашних животных.
 */
public class Main {
    private static Map<String, Animal> registry = new HashMap<>();
    private static Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        Counter counter = new Counter();
        try (counter) {
            while (true) {
                System.out.println("\nМеню:");
                System.out.println("1. Завести новое животное");
                System.out.println("2. Определить животное в правильный класс");
                System.out.println("3. Увидеть список команд, которые выполняет животное");
                System.out.println("4. Обучить животное новым командам");
                System.out.println("5. Выйти из программы");
                System.out.print("Выберите действие: ");

                int choice = scanner.nextInt();
                scanner.nextLine();

                switch (choice) {
                    case 1:
                        addAnimal();
                        counter.add();
                        System.out.println("Текущее значение счетчика: " + counter.getCount());
                        break;
                    case 2:
                        showAnimalList();
                        classifyAnimal();
                        break;
                    case 3:
                        showAnimalList();
                        listCommands();
                        break;
                    case 4:
                        showAnimalList();
                        trainAnimal();
                        break;
                    case 5:
                        System.out.println("Программа завершена.");
                        return;
                    default:
                        System.out.println("Некорректный выбор. Пожалуйста, выберите действие из меню.");
                }
            }
        } catch (Exception e) {
            System.out.println("Произошла ошибка: " + e.getMessage());
        }
        System.out.println("Текущее значение счетчика: " + counter.getCount());
    }

    /**
     * Выводит список добавленных животных в реестр.
     */
    private static void showAnimalList() {
        System.out.println("\nСписок добавленных животных:");
        for (String name : registry.keySet()) {
            System.out.println(name);
        }
    }

    /**
     * Метод для добавления нового животного
     */
    private static void addAnimal() {
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();
        System.out.print("Введите тип животного (домашнее или вьючное): ");
        String type = scanner.nextLine();
        System.out.print("Введите команду, которую выполняет животное: ");
        String command = scanner.nextLine();

        classes.Animal animal;
        if ("домашнее".equalsIgnoreCase(type)) {
            animal = new classes.DomesticAnimal(name, type, command);
        } else if ("вьючное".equalsIgnoreCase(type)) {
            animal = new classes.PackAnimal(name, type, command);
        } else {
            System.out.println("Некорректный тип животного.");
            return;
        }

        registry.put(name, animal);
        System.out.println(name + " успешно добавлено в реестр.");
    }

    /**
     * Метод для определения типа животного
     */
    private static void classifyAnimal() {
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();

        classes.Animal animal = registry.get(name);
        if (animal != null) {
            System.out.println(name + " относится к типу: " + animal.getType());
        } else {
            System.out.println("Животное с именем " + name + " не найдено.");
        }
    }

    /**
     * Метод для отображения списка команд, которые выполняет животное
     */
    private static void listCommands() {
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();

        Animal animal = registry.get(name);
        if (animal != null) {
            List<String> commands = animal.getCommands();
            if (!commands.isEmpty()) {
                System.out.println(name + " выполняет следующие команды:");
                for (String command : commands) {
                    System.out.println(command);
                }
            } else {
                System.out.println(name + " не выполнил ни одной команды.");
            }
        } else {
            System.out.println("Животное с именем " + name + " не найдено.");
        }
    }

    /**
     * Метод для обучения животного новым командам
     */
    private static void trainAnimal() {
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();

        Animal animal = registry.get(name);
        if (animal != null) {
            System.out.print("Введите новую команду для " + name + ": ");
            String newCommand = scanner.nextLine();
            animal.setCommand(newCommand);
            System.out.println(name + " успешно обучено новой команде.");
        } else {
            System.out.println("Животное с именем " + name + " не найдено.");
        }
    }
}