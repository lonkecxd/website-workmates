package bean;

import java.sql.Date;

public class user {
	private int id;
	private String username;
	private String password;
	private String email;
	private Date birthday;
	private String sex;
	private int studyAreaId;
	private int photoSRC;
	
	public void setid(int id)
	{
		this.id=id;
	}
	public int getid()
	{
		return id;
	}
	
	public void setusername(String username)
	{
		this.username=username;
	}
	public String getusername()
	{
		return username;
	}
	
	public void setpassword(String password)
	{
		this.password=password;
	}
	public String getpassword()
	{
		return password;
	}
	
	public void setemail(String email)
	{
		this.email=email;
	}
	public String getemail()
	{
		return email;
	}
	
	public void setsex(String sex)
	{
		this.sex=sex;
	}
	public String getsex()
	{
		return sex;
	}
	
	public void setbirthday(Date birthday)
	{
		this.birthday=birthday;
	}
	public Date getbirthday()
	{
		return birthday;
	}
	
	public void setstudyAreaId(int studyAreaId)
	{
		this.studyAreaId=studyAreaId;
	}
	public int getstudyAreaId()
	{
		return studyAreaId;
	}
	
	public void setphotoSRC(int photoSRC)
	{
		this.photoSRC=photoSRC;
	}
	public int getphotoSRC()
	{
		return photoSRC;
	}
}
