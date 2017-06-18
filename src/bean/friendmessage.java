package bean;

import java.sql.Date;

public class friendmessage {
	private int id;
	private int sendId;
	private int recieverId;
	private String message;
	private boolean isRecieved;
	private Date sendTime;
	
	public void setid(int id)
	{
		this.id=id;
	}
	public int getid()
	{
		return id;
	}
	
	public void setsendId(int sendId)
	{
		this.sendId=sendId;
	}
	public int getsendId()
	{
		return sendId;
	}
	
	public void setrecieverId(int recieverId)
	{
		this.recieverId=recieverId;
	}
	public int getrecieverId()
	{
		return recieverId;
	}
	
	public void setmessage(String message)
	{
		this.message=message;
	}
	public String getmessage()
	{
		return message;
	}
	
	public void setisRecieved(boolean isRecieved)
	{
		this.isRecieved=isRecieved;
	}
	public boolean getisRecieved()
	{
		return isRecieved;
	}
	
	public void setsendTime(Date sendTime)
	{
		this.sendTime=sendTime;
	}
	public Date getsendTime()
	{
		return sendTime;
	}
}
