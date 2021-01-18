package 静态代理.动态代理;

public class Business implements  IBusiness {

    @Override
    public String doWork() {
        System.out.println ("打工");
        return "打工";
    }
}
