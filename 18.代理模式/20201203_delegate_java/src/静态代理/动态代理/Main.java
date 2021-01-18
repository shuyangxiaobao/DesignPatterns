package 静态代理.动态代理;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Main {
    public static void main(String[] args) {

        demo1 ();
        demo2 ();
    }


    static public void demo2() {
        System.out.println ("demo2 ========");
        Business business = new Business ();
        IBusiness proxyBusiness = (IBusiness) Proxy.newProxyInstance ( business.getClass ().getClassLoader (),
                business.getClass ().getInterfaces (), new InvocationHandler () {
                    @Override
                    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

                         /*
                        代理逻辑编写的方法：代理对象调用的所有方法都会触发该方法执行
                            参数：
                                1. proxy:代理对象
                                2. method：代理对象调用的方法，被封装为的对象
                                3. args:代理对象调用的方法时，传递的实际参数
                     */
                        if (method.getName () == "doWork") {
                            return (method.invoke ( business, args ) + "代理");
                        }
                        return null;
                    }
                } );
        String s = proxyBusiness.doWork ();
        System.out.println (s);

    }


    static public void demo1() {
        System.out.println ("demo1 ========");
        Business business = new Business ();


           /*
           动态代理
            三个参数：
                1. 类加载器：真实对象.getClass().getClassLoader()
                2. 接口数组：真实对象.getClass().getInterfaces()
                3. 处理器：new InvocationHandler()
         */
        IBusiness proxy = (IBusiness) Proxy.newProxyInstance (
                business.getClass ().getClassLoader (),
                business.getClass ().getInterfaces (),
                new BusinessHandler ( business ) );
        proxy.doWork ();
    }


}
