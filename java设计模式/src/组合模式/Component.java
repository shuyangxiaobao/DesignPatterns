package 组合模式;

public abstract class Component {
    public String name;

    public Component(String name) {
        this.name = name;
    }

    public abstract void addComponent(Component component);

    public abstract void remove(Component component);

    public abstract void display();
}
