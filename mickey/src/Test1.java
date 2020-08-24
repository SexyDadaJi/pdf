import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/test1")
public class Test1  extends HttpServlet{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	
	PrintWriter pw= res.getWriter();
	Cookie[] c=req.getCookies();
	if(c==null)
		pw.println("no cookie");
	else
	{
		for(Cookie c1:c)
		{
			String name=c1.getName();
			String value=c1.getValue();
			pw.print("name:"+name+"value:"+value);
		}
	}
}
}