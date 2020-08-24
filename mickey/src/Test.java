import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/test")
public class Test  extends HttpServlet{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	
	PrintWriter pw= res.getWriter();
	String name=req.getParameter("name");
	String value=req.getParameter("value");
	Cookie c=new Cookie(name,value);
	res.addCookie(c);
	pw.println("cookie added sucessfully");
	HttpSession ss= req.getSession();
	ss.setMaxInactiveInterval(60);
	if(ss.isNew())
	{
		
		
		pw.println("you are new");
	}
	else {
		pw.println("you are old broo!!");
	}
}
}
