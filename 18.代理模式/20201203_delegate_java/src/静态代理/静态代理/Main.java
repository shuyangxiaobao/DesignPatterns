package 静态代理.静态代理;

public class Main {
    public static void main(String[] args) {
        demo1 ();
    }

    static void demo1(){
        UserDao userDao = new UserDao ();
        UserDaoProxy proxy = new UserDaoProxy ( userDao );
        proxy.save ();
    }
}
