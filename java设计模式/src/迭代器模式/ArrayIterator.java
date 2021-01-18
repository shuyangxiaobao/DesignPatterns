package 迭代器模式;

import java.util.ArrayList;

public class ArrayIterator extends AnyIterator<ArrayList<Object>, Object> {


    public ArrayIterator(ArrayList<Object> datas) {
        super ( datas );
    }


    @Override
    public Object next() {
        if (this.hasNext ()){
            Object a = this.datas.get ( this.index );
           this.index += 1;
           return a;
        } else {
            return null;
        }
    }

    @Override
    public Boolean hasNext() {
        return this.index < this.datas.size ();

    }
}
