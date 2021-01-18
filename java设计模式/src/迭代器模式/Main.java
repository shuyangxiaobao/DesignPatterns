package 迭代器模式;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Main {

    public static void main(String[] args) {
     demo1 ();
    }


    public static void demo2(){
        HashMap<String, String> map = new HashMap<> ();

        for (int i = 0; i < 10; i++) {
            map.put ( i+ "",i+"个人" );
        }
        HashIterator iterator = new HashIterator ( map );
        while (iterator.hasNext ()){
            Map.Entry<String, String> next = iterator.next ();
            System.out.println ("key:" + next.getKey());
            System.out.println ("value:" + next.getValue());

        }

    }

    public static void demo1(){
        ArrayList list = new ArrayList ();
        for (int i = 0; i < 10; i++) {
            list.add ( i+10 + "😄" );
        }
        ArrayIterator iterator = new ArrayIterator ( list );
        while (iterator.hasNext ()){
            Object next = iterator.next ();
            System.out.println (next);
        }

    }





}
