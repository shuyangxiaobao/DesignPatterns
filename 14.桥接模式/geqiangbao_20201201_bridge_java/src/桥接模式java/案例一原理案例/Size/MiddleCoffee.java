package 桥接模式java.案例一原理案例.Size;

import 桥接模式java.案例一原理案例.Coffee;

public class MiddleCoffee extends Coffee {

    @Override
    public void makeCoffee() {
      String a = "中杯" + this.additive.getContent ();
        System.out.println (a);
    }
}
