package classes;

import java.util.ArrayList;
import java.util.List;


public abstract class Animal {
    private String name;
    private String type;
    private List<String> commands;

    public Animal(String name, String type, String command) {
        this.name = name;
        this.type = type;
        this.commands = new ArrayList<>();
        this.commands.add(command);
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public List<String> getCommands() {
        return commands;
    }

    public void setCommand(String newCommand) {
        this.commands.add(newCommand);
    }
}

