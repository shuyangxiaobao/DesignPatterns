package 静态代理.静态代理;

public class UserDao implements IUserDao {

    @Override
    public void save() {
        System.out.println ( "数据已保存！！！" );
    }
}
