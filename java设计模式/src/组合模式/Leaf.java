package 组合模式;

public class Leaf extends Component {
    public Leaf(String name) {
        super ( name );
    }

    @Override
    public void addComponent(Component component) {
        throw new UnsupportedOperationException ();

    }

    @Override
    public void remove(Component component) {
        throw new UnsupportedOperationException ();
    }

    @Override
    public void display() {
        System.out.println (name);
    }
}
