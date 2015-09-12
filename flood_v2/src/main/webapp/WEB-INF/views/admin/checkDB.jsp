<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// String url = "jdbc:sqlserver://localhost;databaseName=dbname";
// String user="";
// String password="";

// url = request.getParameter("url");
// user = request.getParameter("user");
// password = request.getParameter("pass");

// out.println("URL: " + url + "<br/>");
// out.println("USER: " + user + "<br/>");
// out.println("PASSWORD: " + password + "<br/>");

// try{
// Class.forName("org.postgresql.Driver");


// Connection conn = DriverManager.getConnection(url, user, password);

// out.print(conn);
// out.print("Connection ok.");

// conn.close();
// }
// catch(Exception e){
// 	out.print("Error");
// 	e.printStackTrace();
// 	out.print(e.getMessage());
// }
%>
-------------------------<br/>
<%

String datasource = request.getParameter("ds");

out.println("Datasource: " + datasource + "<br/>");

try{
	InitialContext cxt = new InitialContext();
	if ( cxt == null ) {
	   throw new Exception("Uh oh -- no context!");
	}

	DataSource ds = (DataSource) cxt.lookup( datasource);

	if ( ds == null ) {
	   throw new Exception("Data source not found!");
	}
	
// Allocate and use a connection from the pool
Connection conn = ds.getConnection();

out.print(conn);
out.print("Connection ok.");

conn.close();
}
catch(Exception e){
	out.print("DS>Error");
	e.printStackTrace();
	out.print(e.getMessage());
	
	
}
%>
</body>
</html>