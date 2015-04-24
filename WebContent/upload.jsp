<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.*"  %>
<%
String filename = request.getParameter("filename");
//always give the path from root. This way it almost always works.
String nameOfTextFile = "C:/Documents and Settings/User-PC/My Documents/Downloads/Sem_2/SEM2_project-master/files.txt";
 
    PrintWriter pw = new PrintWriter(new FileOutputStream(nameOfTextFile));
    pw.println(filename);
    //clean up
    pw.close();

%>
<%  
MultipartRequest m = new MultipartRequest(request, "C:/Documents and Settings/User-PC/My Documents/Downloads/Sem_2/SEM2_project-master/Uploaded_Files", 100000000);  
response.sendRedirect("Home_Student_uploadsucc.jsp");
  
%>  