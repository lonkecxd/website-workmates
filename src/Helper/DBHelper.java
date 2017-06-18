package Helper;

import Model.FriendsRelationship;
import Model.Project;
import Model.UserInfo;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DBHelper {
    SessionFactory sessionFactory;
    Session session;
    Query query;
    List list ;
    private Session getSession(){
        sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        return session;
    }

    public List<Project> queryAllCreatedProjects(String username){
        getSession();
        query = session.createQuery("from UserInfo where username=?");
        query.setString(0, username);
        list = query.list();
        if (list.size() > 0) {
            List<Project> projectList = new ArrayList<>();
            UserInfo userInfo = (UserInfo) list.get(0);
            Query query1 = session.createQuery("from Project where masterId=?");
            query1.setInteger(0, userInfo.getId());
            List list1 = query1.list();
            for (int i = 0; i < list1.size(); i++) {
                Project project = (Project) list1.get(i);
                projectList.add(project);
            }
            finalStuff();
            return projectList;

        } else {
            finalStuff();
            return null;
        }
    }

    public void saveProject(Project project){
        getSession();
        Transaction transaction = session.beginTransaction();
        session.save(project);
        transaction.commit();
        finalStuff();
    }

    public List<UserInfo> queryAllFriends(String username){
        getSession();
        query = session.createQuery("from UserInfo where username=?");
        query.setString(0, username);
        list = query.list();
        if (list.size() > 0) {
            List<UserInfo> userInfoList = new ArrayList<>();
            UserInfo userInfo = (UserInfo) list.get(0);
            Query query1 = session.createQuery("from FriendsRelationship where masterId=?");
            query1.setInteger(0, userInfo.getId());
            List list1 = query1.list();
            for (int i = 0; i < list1.size(); i++) {
                Query query2 = session.createQuery("from UserInfo where id=?");
                List list2 = query2.list();
                if (list2.size() > 0) {
                    UserInfo friend = (UserInfo) list2.get(0);
                    userInfoList.add(friend);
                }
            }
            finalStuff();
            return userInfoList;
        } else {
            finalStuff();
            return null;
        }
    }

    public void saveFriend(UserInfo me,UserInfo friend){
        getSession();
        Transaction transaction = session.beginTransaction();
        int masterId = me.getId();
        int friendId = friend.getId();
//        Timestamp date = new Timestamp(new java.util.Date().getTime());
        FriendsRelationship friendsRelationship = new FriendsRelationship();
        friendsRelationship.setMasterId(masterId);
        friendsRelationship.setFriendId(friendId);
        session.save(friendsRelationship);
        transaction.commit();
        finalStuff();
    }

    private void finalStuff(){
        if (session != null) {
            session.close();
        }
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
}
