package 桥接模式java.案例一原理案例;

import 桥接模式java.案例一原理案例.Size.MiddleCoffee;
import 桥接模式java.案例一原理案例.additive.SugarAdditive;

public class Main {

    public static void main(String[] args) {
     demo1();
    }

    static public void demo1(){

        MiddleCoffee middleCoffee = new MiddleCoffee ();
//        Coffee coffee = new MiddleCoffee ();
//        CoffeeAdditive additive = new SugarAdditive ();
//        coffee.additive = additive;
//        coffee.makeCoffee ();
    }
}
