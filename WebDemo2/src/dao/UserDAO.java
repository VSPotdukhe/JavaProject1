package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conn.DBConn;
import model.User;

public class UserDAO
{
	Connection conn;
	public UserDAO() throws Exception
	{
		conn=DBConn.getConn();
	}
	
	public User checkLogin(User userObj) throws Exception
	{
		PreparedStatement psmt=conn.prepareStatement("select * from Customer where loginId=? and passwd=?");
		
		psmt.setString(1, userObj.getLoginId());
		psmt.setString(2, userObj.getPassword());
		
		
		ResultSet rs=psmt.executeQuery();
		
		if(rs.next())
		{
			userObj.setCustomerName(rs.getString(3));
			return userObj;
		}
		else
		{
			return null;
		}
	}
	
	public boolean insertCustomer(User userObj) throws Exception
	{
		PreparedStatement psmt=conn.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
		
		psmt.setString(1, userObj.getLoginId());
		psmt.setString(2, userObj.getPassword());
		psmt.setString(3, userObj.getCustomerName());
		psmt.setString(4, userObj.getEmailId());
		psmt.setString(5, userObj.getMobile());
		psmt.setString(6, userObj.getAddress());
		psmt.setString(7, userObj.getCountry());
		
		int row_eff=psmt.executeUpdate();
		
		if(row_eff>0)
			return true;
		else
			return false;
	}
}
