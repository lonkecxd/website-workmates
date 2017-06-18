package Action;

import java.util.ArrayList;
import java.util.List;

import Helper.HibernateSessionFactory;
import Model.Role;
import Model.UserInfo;
import org.apache.struts2.ServletActionContext;

import DAO.ProjectDAO;
import JavaBean.ProjectStepInfo;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Query;
import org.hibernate.Session;

public class RoleAllocation extends ActionSupport {
	List<ProjectStepInfo> list=new ArrayList<ProjectStepInfo>();
	List<UserInfo> membersList = new ArrayList<>();

    public List<Role> getRoleList() {
        return roleList;
    }

    List<Role> roleList = new ArrayList<>();
	
	public List<ProjectStepInfo> getList() {
		return list;
	}

    public List<UserInfo> getMembersList() {
        return membersList;
    }

    @Override
	public String execute() throws Exception {
		String string=ServletActionContext.getRequest().getParameter("programId");
		System.out.println(string);
		Integer id=Integer.valueOf(string);
		ProjectDAO projectDAO=new ProjectDAO();
		List<Object[]> list1=projectDAO.queryProjectStepInfo(id);
		for(Object[] objects:list1){
			ProjectStepInfo projectStepInfo=new ProjectStepInfo();
			projectStepInfo.setStepId(objects[0].toString());
			projectStepInfo.setStepTitle(objects[1].toString());
			projectStepInfo.setUsername(objects[2].toString());
			projectStepInfo.setRole(objects[3].toString());
			list.add(projectStepInfo);
		}
		List<Object[]> list2 = projectDAO.queryProjectMembers(id);
		for(Object object:list2){
			UserInfo member=new UserInfo();
			UserInfo item = (UserInfo) object;
			member.setId(item.getId());
			member.setBirthday(item.getBirthday());
			member.setUsername(item.getUsername());
			member.setEmail(item.getEmail());
			member.setPhotoSrc(item.getPhotoSrc());
			member.setSex(item.getSex());
			member.setStudyAreaId(item.getStudyAreaId());
			member.setPassword(item.getPassword());
			membersList.add(member);
		}

        Session session1 = HibernateSessionFactory.getSession();
        Query query = session1.createQuery("from Role ");
        List list = query.list();
        for (int i = 0; i < list.size(); i++) {
            Role role = (Role) list.get(i);
            roleList.add(role);
        }
        HibernateSessionFactory.closeSession();
		return "success";
	}	
	
}
