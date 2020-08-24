package com.mickey.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mickey.dao.HomeDao;
import com.mickey.model.MyUser;

//import org.apache.catalina.User;

@Service
public class HomeService {
@Autowired
HomeDao homeDao;
public void insertInfo(MyUser user) throws SQLException
{
	homeDao.insertInfo(user);

	System.out.println("Return serviceee");
}
public String getInfo() throws SQLException {
	// TODO Auto-generated method stub
	return homeDao.insertInfo(null);
}
public String getData() {
	// TODO Auto-generated method stub
	return homeDao.getData();
}
public String doGet(HttpServletRequest req, HttpServletRequest res) {
	// TODO Auto-generated method stub
	String user_email = req.getParameter("email");
	String passwd = req.getParameter("Password");
	
	return null;
}
}
