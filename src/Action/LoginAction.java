package Action;
import IDAO.IUserDAO;
import Model.UserInfo;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;
import DAO.*;
import org.apache.struts2.ServletActionContext;

public class LoginAction implements ModelDriven<UserInfo> {
    private UserInfo user = new UserInfo();

    @Override
    public UserInfo getModel() {
        return user;
    }

    public String execute(){
        UserDAO userDAO = new UserDAO();
        System.out.println("action.............");
        ServletActionContext.getRequest().getSession().setAttribute("uid",userDAO.queryUserId(user.getUsername()));
        return userDAO.validateLogin(user.getUsername(),user.getPassword());
        

//        DBConn dbConn = new DBConn();
//        String inputUsername = user.getUsername();
//        String inputPassword = user.getPassword();
//        boolean validated = false;
//        //≤È—Ø
//        String sql = "select * from [user]";
//        List<UserInfo> userList;
//        userList = dbConn.queryUser(sql);
//        UserInfo currentUser;
//        Map session = ActionContext.getContext().getSession();
//        currentUserInfo = (UserInfo) session.get("user");
//        if (currentUser == null) {
//            for (UserInfo user :
//                    userList) {
//                if (inputUsername.compareTo(user.getUsername()) == 0 && inputPassword.compareTo(user.getPassword()) == 0) {
//                    validated = true;
//                    session.put("user", user);
//                    break;
//                }
//            }
//        } else {
//            validated = true;
//        }
//
//        if (validated == true) {
//            return "success";
//        } else {
//            return "error";
//        }
    }
}
