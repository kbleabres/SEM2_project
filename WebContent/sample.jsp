<%@ page import="java.io.*" %>
<HTML>
    <HEAD>
        <TITLE>Index of Files</TITLE>
    </HEAD>

    <BODY>
        <H1>Index of Files</H1>
        <% 
            String file = application.getRealPath("C:/Documents and Settings/User-PC/My Documents/Downloads/Sem_2/SEM2_project-master/"); 

            File f = new File(file);
            String [] fileNames = f.list();
            File [] fileObjects= f.listFiles();
        %>
        <UL>
        <%
            for (int i = 0; i < fileObjects.length; i++) {
                if(!fileObjects[i].isDirectory()){
        %>
        <LI>
          <A HREF="<%= fileNames[i] %>"><%= fileNames[i] %></A>
          &nbsp;&nbsp;&nbsp;&nbsp;
          (<%= Long.toString(fileObjects[i].length()) %> bytes long)
        <%
                }
            }
        %>
        </UL>
    </BODY>
</HTML>