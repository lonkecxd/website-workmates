package Action;

import DB.DB;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

public class deletefriendAction extends ActionSupport{
private String name;
	
	public String execute() throws Exception {
		DB db =new DB();
		int masterid= (int)ActionContext.getContext().getSession().get("uid");
		int friendid= Integer.parseInt(ServletActionContext.getRequest().getParameter("fId"));
		if(db.deletefriends(masterid, friendid))
		{
			return "success";
		}else
		{
			return "error";
		}
	}
	
	public String getfriendid() {
		return name;
	}
	
	public void setfriendid(String name) {
		this.name = name;
	}
}
