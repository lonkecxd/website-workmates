package Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import DAO.ProjectDAO;
import JavaBean.ProjectStepCompleteness;
import Model.UserInfo;

import com.opensymphony.xwork2.ActionSupport;

public class CheckSchedule extends ActionSupport {
	List<ProjectStepCompleteness> list=new ArrayList<ProjectStepCompleteness>();
	
	public List<ProjectStepCompleteness> getList() {
		return list;
	}

	@Override
	public String execute() throws Exception {
		
		String string=ServletActionContext.getRequest().getParameter("programId");
		Integer id=Integer.valueOf(string);
		ProjectDAO projectDAO=new ProjectDAO();
		List<Object[]> list1=projectDAO.queryProjectStepCompleteness(id);
		for(Object[] objects:list1){
			ProjectStepCompleteness projectStepCompleteness=new ProjectStepCompleteness();
			projectStepCompleteness.setStepId(objects[0].toString());
			projectStepCompleteness.setStepTitle(objects[1].toString());
			projectStepCompleteness.setCompleteness(objects[2].toString());
			projectStepCompleteness.setUsername(objects[3].toString());
			list.add(projectStepCompleteness);
		}
		
		return "success";
	}
	
}
