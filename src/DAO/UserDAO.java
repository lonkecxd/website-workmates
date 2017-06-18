package DAO;

import Helper.HibernateSessionFactory;
import IDAO.IUserDAO;
import Model.FriendsRelationship;
import Model.UserInfo;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.sql.PseudoColumnUsage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserDAO implements IUserDAO {
    @Override
    public String validateLogin(String username, String password) {
    	Session session = null;
        Transaction tx=null;
        try{
        	session = HibernateSessionFactory.getSession();
        	tx=session.beginTransaction();
        	Query query = session.createQuery("FROM UserInfo WHERE username=? and password=?");
	        query.setParameter(0, username);
	        query.setParameter(1, password);
	        System.out.println(username+password);
	        UserInfo user = (UserInfo) query.uniqueResult();
	        if (user!=null) { 	
	        	System.out.println(user);
	            ActionContext.getContext().getSession().put("user", user);
	            ActionContext.getContext().getSession().put("uid", user.getId());
	            System.out.println("用户验证成功");
	            return Action.SUCCESS;
	        }
	        tx.commit();
        }catch(Exception e){
        	e.printStackTrace();
        }finally{
        	HibernateSessionFactory.closeSession();
        }
        return Action.ERROR;
    }

    @Override
    public void validateRegister(UserInfo user) {

    }

    @Override
    public List<UserInfo> queryFriends(UserInfo user) {
        List<UserInfo> resultList = new ArrayList<>();
        Session session = HibernateSessionFactory.getSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from FriendsRelationship where masterId=?");
        query.setInteger(0, user.getId());
        List list = query.list();
        for (int i = 0; i < list.size(); i++) {
            FriendsRelationship f = (FriendsRelationship) list.get(i);
            Integer friendId = f.getFriendId();
            Query query1 = session.createQuery("from UserInfo where id=?");
            query1.setInteger(0, friendId);
            query1.setMaxResults(1);
            UserInfo friend = (UserInfo) query1.uniqueResult();
            resultList.add(friend);
        }
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
        return resultList;
    }
    
    //根据用户id查询用户
    public UserInfo queryUserInfo(Integer id){
    	Session session=HibernateSessionFactory.getSession();
        Query query = session.createQuery("from UserInfo where id=?");
        query.setInteger(0, id);
        query.setMaxResults(1);
        UserInfo userInfo=(UserInfo)query.uniqueResult();
    	session.close();
    	return userInfo;
    }

    public UserInfo queryUserId(String username){
        Session session=HibernateSessionFactory.getSession();
        Query query = session.createQuery("from UserInfo where username=?");
        query.setString(0, username);
        query.setMaxResults(1);
        UserInfo userInfo=(UserInfo)query.uniqueResult();
        session.close();
        return userInfo;
    }

}
