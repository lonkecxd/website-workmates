package Helper;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.Service;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.internal.StandardServiceRegistryImpl;

public class HibernateSessionFactory {
    private static final ThreadLocal<Session> threadLocal = new ThreadLocal<>();

    private static SessionFactory sessionFactory;

    private static Configuration configuration = new Configuration();

    static {
        try {
            configuration.configure();
            sessionFactory = configuration.buildSessionFactory();
        } catch (Exception e) {
            System.out.println("*************Error creating SessionFactory!");
        }
    }

    private HibernateSessionFactory(){}

    public static Session getSession() throws HibernateException {
        Session session = threadLocal.get();
        if (session == null || !session.isOpen()) {
            if (sessionFactory == null) {
                rebuildSessionFactory();
            }
            session = (sessionFactory != null) ? sessionFactory.openSession() : null;
            threadLocal.set(session);
        }
        return session;
    }

    private static void rebuildSessionFactory(){
        try {
            configuration.configure();
            sessionFactory = configuration.buildSessionFactory();
        } catch (Exception e) {
            System.out.println("*************Error creating SessionFactory!");
        }
    }

    public static void closeSession(){
        Session session = threadLocal.get();
        threadLocal.set(null);
        if (session != null) {
            session.close();
        }
    }

    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }

    public static Configuration getConfiguration(){
        return configuration;
    }
}
