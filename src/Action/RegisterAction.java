package Action;

import Model.UserInfo;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class RegisterAction implements ModelDriven<UserInfo> {
    private UserInfo user = new UserInfo();

    @Override
    public UserInfo getModel() {
        return user;
    }

    public String execute(){
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
        sessionFactory.close();
        return Action.SUCCESS;
    }
}



