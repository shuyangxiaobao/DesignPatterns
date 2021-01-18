package 静态代理.动态代理;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class BusinessHandler implements InvocationHandler {
    private IBusiness business;

    public BusinessHandler(IBusiness business) {
        this.business = business;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

        System.out.println ("before...");
        method.invoke ( business,args );
        System.out.println ("after...");
        return null;
    }
}




