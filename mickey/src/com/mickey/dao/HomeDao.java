
package com.mickey.dao;
import java.sql.CallableStatement;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.interactive.action.PDActionJavaScript;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.mickey.model.MyUser;
@Repository
public class HomeDao {
@Autowired
JdbcTemplate jdbcTemplate;

public void insertinfo(MyUser user) throws SQLException
{
	Connection con=jdbcTemplate.getDataSource().getConnection();
	java.sql.CallableStatement pst=con.prepareCall("call new_procedure(?,?,?)");
	pst.setString(1, "add");
	pst.setString(2, "");
	pst.setInt(3, 131);

}


public String getInfo() throws SQLException{
	Connection con=null;
	String s=null;
	try {
		System.out.println("dao method");
		con=jdbcTemplate.getDataSource().getConnection();
		PreparedStatement pst=con.prepareStatement("Select * from student where id=3");
		System.out.println("dao1 method");
		//pst.setInt(1, 3);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2));
			s=rs.getString(2);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	finally {
		
		try {
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
return s;
}



public String insertInfo(MyUser user) throws SQLException {
	System.out.println("dao method");
	Connection con=jdbcTemplate.getDataSource().getConnection();
	PreparedStatement pst=con.prepareStatement("Insert into student  values(?,?,?)");
	System.out.println("dao1 method");
	pst.setInt(1, 4);
	pst.setString(2,"kajal");
	pst.setInt(3, 26);
	int i= pst.executeUpdate();
	System.out.println(i);
	System.out.println("daooo uo");
	con.close();
	return null;
}

public String renewPasswd(String email1,String password) throws SQLException {
	System.out.println(email1);
	System.out.println(password);
	final String procedureCall="{call database1.mailSys(?,?,?)}";
	Connection con=null;
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println(email1);
		System.out.println(password);
		cs.setString(1, "renewPasswd");		
		cs.setString(2, email1);
		cs.setString(3, password);
		cs.executeUpdate();
		System.out.println("done");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}
	public String getData() {
		// TODO Auto-generated method stub
		System.out.println("get data methoddddddd");
		return "end";
		}

public String trial(MyUser user) throws SQLException
{
	System.out.println("before call");
	final String procedureCall="{call database1.new_procedure(?,?,?,?)}";
	Connection con=null;
	int id=7;
	String name="chacha";
	int age=23;
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println("after call");
		cs.setString(1, "add");
		cs.setInt(2, id);
		cs.setString(3, name);
		cs.setInt(4, age);
		cs.executeUpdate();

	}

	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}

public String account_sign(String name,String emailid,String password) throws SQLException
{
	System.out.println("before call");
	final String procedureCall="{call database1.account(?, ?,?, ?)}";
	Connection con=null;
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println("after call");
		cs.setString(1, "account");
		cs.setString(2, name);
		cs.setString(3, emailid);
		cs.setString(4, password);
		cs.executeUpdate();

	}

	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}

public String account_login(String emailid1,String password1) throws SQLException
{
	JFrame f=null;;  
	System.out.println("login call");
	final String procedureCall="{call database1.account_login(?, ?, ?)}";
	Connection con=null;
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println("after call");
		cs.setString(1, "account_login");
		cs.setString(2, emailid1);
		cs.setString(3, password1);
		ResultSet rs=cs.executeQuery();
		if(rs.next())
		{
			return "index1";
		}
		else
		{
			System.out.println("sorry your password is incorrect Please re-login :(");
			return "login";
			
			/*
			 * f=new JFrame(); JOptionPane.showMessageDialog(
			 * f,"Sorry! User password/email is incorrect. Please recheck :)");
			 * System.out.println("sorry");
			 */
			}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}

public String vvv(String email,String passwd) throws SQLException
{
	System.out.println("before call");
	final String procedureCall="{call database1.newPassword(?, ?,?)}";
	Connection con=null;
	passwd="ish12";
	email="ishitatiwari625@gmail.com";
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println("after call");
		cs.setString(1, "newPassword");
		cs.setString(2, email);
		cs.setString(3, passwd);
		cs.executeUpdate();

	}

	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}


public String renewPasswd1(String email,String password) throws SQLException
{
	System.out.println("before call");
	final String procedureCall="{call database1.newPassword(?, ?,?)}";
	Connection con=null;
	try{
		con=jdbcTemplate.getDataSource().getConnection();
		CallableStatement cs=con.prepareCall(procedureCall);
		System.out.println("after call");
		cs.setString(1, "newPassword");
		cs.setString(2, email);
		cs.setString(3, password);
		cs.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return procedureCall;
}
}