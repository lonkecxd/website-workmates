package Helper;

import Model.UserInfo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBConn {
    Connection con = null;
    Statement stat = null;
    ResultSet rs = null;

    private void getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //Properties prop = new Properties();
            //prop.put("charSet", "gb2312");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=WorkMates","sa","json1996");
        } catch (SQLException e) {e.printStackTrace(); }
        catch (ClassNotFoundException e) {e.printStackTrace();}
    }

    public List<UserInfo> queryUser(String sql) {
        getConnection();
        List<UserInfo> userList = new ArrayList<>();
        try {
            stat = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs = stat.executeQuery(sql);
            while (rs.next()){
                UserInfo user = new UserInfo();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                userList.add(user);
            }
        } catch (SQLException e) {}
        finally {
            finallyStuff();
        }
        return userList;
    }


    private void finallyStuff(){
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {}
        }
        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {}
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {}
        }
    }
}
