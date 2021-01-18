package 组合模式;

import java.util.ArrayList;

public class Composite extends Component {

    ArrayList<Component> arrayList = new ArrayList<> ();

    public Composite(String name) {
        super ( name );
    }


    @Override
    public void addComponent(Component component) {
        this.arrayList.add ( component );

    }

    @Override
    public void remove(Component component) {
        this.arrayList.remove ( component );
    }


    @Override
    public void display() {
        System.out.println ( this.name );
        for (Component component : this.arrayList) {
            component.display ();
        }

    }
}
