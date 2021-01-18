package 组合模式;

public class Main {

    public static void main(String[] args) {
        Composite root = new Composite ( "root" );


        Composite a = new Composite ( "A" );

        Composite a1 = new Composite ( "a1" );
        Composite a2 = new Composite ( "a2" );

        Composite b = new Composite ( "B" );

        Composite b1 = new Composite ( "b1" );
        Composite b2 = new Composite ( "b2" );


        Leaf leaf = new Leaf ( "leaf" );
//        leaf.addComponent ( a );

        root.addComponent ( a );
        root.addComponent ( b );
        root.addComponent ( leaf );





        a.addComponent ( a1 );
        a.addComponent ( a2 );
        b.addComponent ( b1 );
        b.addComponent ( b2 );

        root.display ();


    }
}
