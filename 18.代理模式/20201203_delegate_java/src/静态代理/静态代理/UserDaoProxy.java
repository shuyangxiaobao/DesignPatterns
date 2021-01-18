package 静态代理.静态代理;

public class UserDaoProxy implements IUserDao {
    private UserDao userDao;

    public UserDaoProxy(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void save() {
        System.out.println ("start...");
        this.userDao.save ();
        System.out.println ("end...");
    }
}
