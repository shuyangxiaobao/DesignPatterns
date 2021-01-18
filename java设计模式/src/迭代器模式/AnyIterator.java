package 迭代器模式;

public class AnyIterator<K,M> implements Iterator{
    public int index;
    public  K datas;

    public AnyIterator(K datas) {
        this.datas = datas;
    }

    @Override
    public M next() {
        return null;
    }

    @Override
    public Boolean hasNext() {
        return null;
    }
}
