package 迭代器模式;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class HashIterator extends AnyIterator<HashMap<String,String>,Object> {
    Iterator<Map.Entry<String, String>> iterator;

    public HashIterator(HashMap<String, String> datas) {
        super ( datas );
        iterator = this.datas.entrySet ().iterator ();
    }


    @Override
    public Map.Entry<String, String> next() {
        return iterator.next ();
    }

    @Override
    public Boolean hasNext() {
        return iterator.hasNext ();
    }


}
