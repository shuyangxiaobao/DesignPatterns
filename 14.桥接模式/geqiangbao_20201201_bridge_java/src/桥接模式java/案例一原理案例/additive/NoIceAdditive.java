package 桥接模式java.案例一原理案例.additive;

import 桥接模式java.案例一原理案例.CoffeeAdditive;

public class NoIceAdditive extends CoffeeAdditive {

    @Override
    public String getContent() {
        return "不加冰";
    }
}
