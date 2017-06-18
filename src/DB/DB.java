package DB;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.xml.crypto.Data;

import bean.friendmessage;
import bean.friendrelationship;
import org.apache.struts2.ServletActionContext;


public class DB {
	Connection ct;
	PreparedStatement pstmt;
	public DB(){
		 String uri="jdbc:sqlserver://127.0.0.1:1433; DatabaseName=workmates";
         String id="sa";
         String password="json1996";
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
			ct=DriverManager.getConnection(uri,id,password);
			System.out.print("success!");
		}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	public int getuserid(String username)
	{
		int id=0;
		try{
			pstmt=ct.prepareStatement("select id from [UserInfo] where username=?");
			pstmt.setString(1, username);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				id=rs.getInt(1);
			}
			return id;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	public boolean addfriends(int masterid,int friendid){
		try{
			pstmt=ct.prepareStatement("insert into [Friends_Relationship] (masterId,friendId) values(?,?)");
			pstmt.setInt(1, masterid);
			pstmt.setInt(2, friendid);
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	public boolean addProject(Integer rewardedCoin,String title,String description){
		try{
			int masterid = (int)ServletActionContext.getRequest().getSession().getAttribute("uid");
			pstmt=ct.prepareStatement("insert into [Project] (masterId,rewardedCoin,title,description) values(?,?,?,?)");
			pstmt.setInt(1, masterid);
			pstmt.setInt(2, rewardedCoin);
			pstmt.setString(3, title);
			pstmt.setString(4, description);
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	public ArrayList myfriend(int masterid){
		try{
			pstmt=ct.prepareStatement("select * from [Friends_Relationship] where masterId=?");
			pstmt.setInt(1, masterid);
			ArrayList friendlist=new ArrayList();			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				friendrelationship fdrs=new friendrelationship();
				fdrs.setid(rs.getInt(1));
				fdrs.setmasterId(rs.getInt(2));
				fdrs.setfriendId(rs.getInt(3));
				friendlist.add(fdrs);
			}
			return friendlist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public ArrayList findfriends_message(int sendid,int recieverid){
		try{
			pstmt=ct.prepareStatement("select * from [Friends_Message] where (sendId=? and recieverId=?) or (sendId=? and recieverId=?) order by sendTime asc");
			pstmt.setInt(1, sendid);
			pstmt.setInt(2, recieverid);
			pstmt.setInt(3, recieverid);
			pstmt.setInt(4, sendid);
			ArrayList messagelist=new ArrayList();			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				friendmessage fdms=new friendmessage();
				fdms.setid(rs.getInt(1));
				fdms.setsendId(rs.getInt(2));
				fdms.setrecieverId(rs.getInt(3));
				fdms.setmessage(rs.getString(4));
				fdms.setisRecieved(rs.getBoolean(5));
				fdms.setsendTime(rs.getDate(6));
				messagelist.add(fdms);
			}
			return messagelist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean deletefriends(int masterid,int friendid){
		try{
			pstmt=ct.prepareStatement("delete from [Friends_Relationship] where masterId=? and friendId=?");
			pstmt.setInt(1, masterid);
			pstmt.setInt(2, friendid);
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean sendmessage(int sendid,int recieverid,String message,Timestamp date){
		try{
			pstmt=ct.prepareStatement("insert into [Friends_Message] (sendId,recieverId,message,sendTime) values(?,?,?,?)");
			pstmt.setInt(1, sendid);
			pstmt.setInt(2, recieverid);
			pstmt.setString(3, message);
			pstmt.setTimestamp(4,date);
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
}
