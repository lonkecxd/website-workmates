package bean;

import java.sql.Date;

public class friendrelationship{
	private int id;
	private int masterId;
	private int friendId;
	
	public void setid(int id)
	{
		this.id=id;
	}
	public int getid()
	{
		return id;
	}
	
	public void setmasterId(int idmasterId)
	{
		this.masterId=masterId;
	}
	public int getmasterId()
	{
		return masterId;
	}
	
	public void setfriendId(int friendId)
	{
		this.friendId=friendId;
	}
	public int getfriendId()
	{
		return friendId;
	}
}
