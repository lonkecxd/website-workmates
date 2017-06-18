package DAO;

import Helper.HibernateSessionFactory;
import IDAO.IProjectDAO;
import Model.Area;
import Model.Project;
import Model.Role;
import Model.Step;
import Model.USRoles;
import Model.UserInfo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class ProjectDAO implements IProjectDAO{

	//�����û���ѯ�û���������Ŀ
    @Override
    public List<Project> queryCreatedProjects(UserInfo user) {
        Session session = HibernateSessionFactory.getSession();
        Query query = session.createQuery("from Project where masterId=?");
        query.setInteger(0, user.getId());
        List<Project> list = query.list();
        if (list != null) {
            return list;
        }
        HibernateSessionFactory.closeSession();
        return null;
    }
    //�����û���ѯ�û��μӵ���Ŀ
    @Override
    public List queryJoinProjects(UserInfo user){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("select pId from UPParticipate where uId=?");
    	query.setParameter(0, user.getId());
    	List<Integer> list=query.list();
    	List<Project> list1=new ArrayList<>();
    	for(Integer i:list){
    		Query query2=session.createQuery("from Project where id=?");
    		query2.setParameter(0, i);
    		Project project=(Project)query2.uniqueResult();
    		list1.add(project);
    	}
    	session.close();
    	return list1;
    }
    //������Ŀid��ѯ��Ŀ��Ϣ
    public Project queryProjectInfo(Integer i){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from Project where id=?");
    	query.setParameter(0, i);
    	Project project=(Project)query.uniqueResult();
    	if(project!=null){
    		return project;
    	}
    	session.close();
    	return null;
    }
    //������Ŀid����ѯ��Ŀ����
    public List<Step> querySteps(Integer i){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from Step where pId=?");
    	query.setParameter(0, i);
    	List<Step> list=query.list();
    	session.close();
    	return list;
    }
    //������Ŀid��ѯ��ɫ���䡣
    public List<USRoles> queryUsRoles(Integer id){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from USRoles where pId=?");
    	query.setParameter(0, id);
    	List<USRoles> list=query.list();
    	session.close();
    	return list;
    }
    //����id��ѯ��Ŀ����
    public Area queryArea(Integer id){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from Area where id=?");
    	query.setParameter(0, id);
    	Area area=(Area)query.uniqueResult();
    	return area;
    }
    //����id��ѯ��ɫ����
//    public Role queryRole(Integer id){
//    	Session session=HibernateSessionFactory.getSession();
//    	Query query=session.createQuery("from Role where id=?");
//    	query.setParameter(0, id);
//    	Role role=(Role)query.uniqueResult();
//    	return role;
//    }
    //����stepID��ѯstep
//    public Step queryStep(Integer id){
//    	Session session=HibernateSessionFactory.getSession();
//    	Query query=session.createQuery("from Step where id=?");
//    	query.setParameter(0, id);
//    	Step step=(Step)query.uniqueResult();
//    	session.close();
//    	return step;
//    }
    
    
    //������Ŀid,��ѯ�����׶α��⣬��Ա�����ֽ�ɫ��
    public List<Object[]> queryProjectStepInfo(Integer i){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("select a.id,a.stepTitle,b.username,c.roleName from Step as a,UserInfo as b,Role as c,USRoles as d where a.pId=? and a.id=d.stepId and d.uId=b.id and d.roleId=c.id");
    	query.setParameter(0, i);   	
    	List<Object[]> list=query.list();
    	session.close();
    	return list;
    }

	//������Ŀid,���в�����
	public List<Object[]> queryProjectMembers(Integer i){
		Session session=HibernateSessionFactory.getSession();
		Query query=session.createQuery("from UserInfo where id in (select uId from UPParticipate where pId=?)");
		query.setParameter(0, i);
		List<Object[]> list=query.list();
		session.close();
		return list;
	}
	//������Ŀid����ѯ�����׶α��⼰��ɶ�
    public List<Object[]> queryProjectStepCompleteness(Integer i){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("select a.stepId,b.stepTitle,a.completeness,c.username from USRoles as a,Step as b,UserInfo as c where b.pId=? and b.id=a.stepId and a.uId=c.id");
    	query.setParameter(0, i);
    	List<Object[]> list=query.list();
    	session.close();
    	return list;
    }
    
    //������Ŀid���û�����ѯ�û�����׶α��⼰��ɶ�
    public List<Object[]> queryPersonalProjectStepCompleteness(Integer i,String username){
    	Session session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("select a.stepId,b.stepTitle,a.completeness from USRoles as a,Step as b,UserInfo as c where b.pId=? and b.id=a.stepId and a.uId=c.id and c.username=?");
    	query.setParameter(0, i);
    	query.setParameter(1, username);
    	List<Object[]> list=query.list();
    	session.close();
    	return list;
    }
    
    //������Ŀid������id�������ߣ�������ɶ�
    public boolean updateCompleteness(Integer uId,Integer stepId,String completeness){
    	Session session=HibernateSessionFactory.getSession();
    	Transaction tx=session.beginTransaction();
    	Query query=session.createQuery("update USRoles u set u.completeness=? where u.uId=? and stepId=?");
    	query.setParameter(0, completeness);
    	query.setParameter(1, uId);
    	query.setParameter(2, stepId);
    	int r=query.executeUpdate();
    	tx.commit();
    	session.close();
    	if(r>0)
    		return true;
    	return false;
    }
}
