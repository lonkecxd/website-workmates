package Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import DAO.ProjectDAO;
import JavaBean.MyProjectStepCompleteness;
import JavaBean.ProjectStepCompleteness;
import Model.UserInfo;

import com.opensymphony.xwork2.ActionSupport;

public class SubmitSchedule extends ActionSupport {
	List<MyProjectStepCompleteness> list=new ArrayList<MyProjectStepCompleteness>();
	
	public List<MyProjectStepCompleteness> getList() {
		return list;
	}	
	@Override
	public String execute() throws Exception {
		String string=ServletActionContext.getRequest().getParameter("programId");
		Integer id=Integer.valueOf(string);
		ProjectDAO projectDAO=new ProjectDAO();
		UserInfo userInfo=(UserInfo)ServletActionContext.getRequest().getSession().getAttribute("user");
		List<Object[]> list1=projectDAO.queryPersonalProjectStepCompleteness(id, userInfo.getUsername());
		for(Object[] objects:list1){
			MyProjectStepCompleteness projectStepCompleteness=new MyProjectStepCompleteness();
			projectStepCompleteness.setStepId(objects[0].toString());
			projectStepCompleteness.setStepTitle(objects[1].toString());
			projectStepCompleteness.setCompleteness(objects[2].toString());
			projectStepCompleteness.setProjectId(string);
			list.add(projectStepCompleteness);
		}
		
		return "success";
	}
	
}
