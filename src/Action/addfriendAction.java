package Action;

import DAO.UserDAO;
import org.apache.struts2.ServletActionContext;

import DB.DB;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class addfriendAction extends ActionSupport{
	
	public String execute() throws Exception {
		DB db =new DB();
		String friendname = ServletActionContext.getRequest().getParameter("friendname");
		UserDAO userDAO = new UserDAO();
		int masterid=(int)ActionContext.getContext().getSession().get("uid");;
		int friendid=userDAO.queryUserId(friendname).getId();
		if(db.addfriends(masterid, friendid))
		{
			return "success";
		}else
		{
			return "error";
		}
	}
	
}
