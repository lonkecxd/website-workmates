package Action;

import org.apache.struts2.ServletActionContext;

import DAO.ProjectDAO;
import Model.UserInfo;

import com.opensymphony.xwork2.ActionSupport;

public class Test extends ActionSupport {
	String projectId;
	
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	@Override
	public String execute() throws Exception {
		projectId=ServletActionContext.getRequest().getParameter("projectId");
		String completeness=ServletActionContext.getRequest().getParameter("completeness");
		String stepId=ServletActionContext.getRequest().getParameter("stepId");
		UserInfo userInfo=(UserInfo)ServletActionContext.getRequest().getSession().getAttribute("user");
		Integer uId=userInfo.getId();
		ProjectDAO projectDAO=new ProjectDAO();
		Integer stepid=Integer.valueOf(stepId);
		if(projectDAO.updateCompleteness(uId, stepid, completeness)){
			System.out.println("¸úÐÂ³É¹¦¡£¡£¡£¡£");
			
			return "success";
		}else{
			return "error";
		}
		
	}

}
