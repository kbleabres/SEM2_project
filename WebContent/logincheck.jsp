<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<% 
	String username=request.getParameter("username"); 
	String password=request.getParameter("password"); 
	String acctype=request.getParameter("acctype");
	
	if(acctype.equals("instructor")){
		if((username.equals("instructor") && password.equals("1234"))) 
		{ 
			session.setAttribute("username",username); 
			response.sendRedirect("Home_Instructor.jsp"); 
		} 
			else response.sendRedirect("Error.jsp");
		
	}
	else if(acctype.equals("student")){
		if((username.equals("student") && password.equals("1234"))) 
		{ 
			session.setAttribute("username",username); 
			response.sendRedirect("Home_Student.jsp"); 
		} 
			else response.sendRedirect("Error.jsp");
	}
	
	 
	%>

Read more: http://mrbool.com/how-to-create-a-login-form-with-jsp/25685#ixzz3XitOWRas
</body>
</html>