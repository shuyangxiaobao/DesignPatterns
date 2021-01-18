package 原型模式;

public class Main {

    public static void main(String[] args) {
        try {
            demo3 ();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace ();
        }
    }

    public static void demo3() throws CloneNotSupportedException {
        Realizetype obj1 = new Realizetype ();
        Object obj2 = obj1.clone ();
//        Realizetype obj2 = (Realizetype) obj1.clone ();
        System.out.println("obj1==obj2?" + (obj1 == obj2));

    }
}

