package Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import DAO.ProjectDAO;
import DAO.UserDAO;
import Model.Area;
import Model.Project;
import Model.Role;
import Model.Step;
import Model.USRoles;
import Model.UserInfo;

import com.opensymphony.xwork2.ActionSupport;

public class BaseInfo extends ActionSupport {
	
	Project project;
	List<Step> listSteps;
//	List<USRoles> listUSRoles;
	Area area;
	UserInfo userInfo;
	
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public Project getProject() {
		return project;
	}

	public List<Step> getListSteps() {
		return listSteps;
	}

//	public List<USRoles> getListUSRoles() {
//		return listUSRoles;
//	}

	public Area getArea() {
		return area;
	}

	@Override
	public String execute() throws Exception {
		String string=ServletActionContext.getRequest().getParameter("programId");
		System.out.println(string+".......................................");
		Integer id=Integer.valueOf(string);
		ProjectDAO projectDAO=new ProjectDAO();
		project=projectDAO.queryProjectInfo(id);
		listSteps=projectDAO.querySteps(id);
		//listUSRoles=projectDAO.queryUsRoles(id);
		area=projectDAO.queryArea(project.getId());
		userInfo=(UserInfo)ServletActionContext.getRequest().getSession().getAttribute("user");
		return "success";
	}
	
}
