package Action;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import DB.DB;

import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class ChatRoomAction extends ActionSupport {

	public String execute() throws Exception {
        int fId = Integer.parseInt(ServletActionContext.getRequest().getParameter("fId"));
        ActionContext.getContext().getSession().put("fId", fId);
			return "success";		
	}
}
