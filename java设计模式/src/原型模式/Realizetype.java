package 原型模式;

import 迭代器模式.Main;

public class Realizetype implements Cloneable {

    Realizetype() {
        System.out.println("具体原型创建成功！");
    }
    public Object clone() throws CloneNotSupportedException {
        System.out.println("具体原型复制成功！");
        return super.clone();
    }
}
