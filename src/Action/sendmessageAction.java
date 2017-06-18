package Action;

import java.sql.Date;
import java.sql.Timestamp;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import DB.DB;

import com.opensymphony.xwork2.ActionSupport;

public class sendmessageAction extends ActionSupport{
	
	public String execute() throws Exception {
		String message = ServletActionContext.getRequest().getParameter("message");
		DB db =new DB();
		int sendid= (int)ActionContext.getContext().getSession().get("uid");
		int recieverid = (int) ActionContext.getContext().getSession().get("fId");
		Timestamp date = new Timestamp(new java.util.Date().getTime());
		if(db.sendmessage(sendid, recieverid,message,date))
		{
			return "success";
		}else
		{
			return "error";
		}
	}
	
}
