<%@page language="java"  import ="java.sql.*, java.io.*, com.bjsxt.bbs.*, java.util.*"  pageEncoding="GB18030" %>
<%
request.setCharacterEncoding("GBK");
int pid = Integer.parseInt(request.getParameter("pid"));
int rootId = Integer.parseInt(request.getParameter("rootId"));

String title = request.getParameter("title");
System.out.println(title);

String cont = request.getParameter("cont");
System.out.println(cont);

Connection conn = DB.getConn();
String sql = "insert into article values(null, ?, ?, ?, ?, now(), ? )";
PreparedStatement pstmt = DB.prepareStmt(conn, sql);
pstmt.setInt(1, pid);
pstmt.setInt(2, rootId);
pstmt.setString(3, title);
pstmt.setString(4, cont);
pstmt.setInt(5, 0);

pstmt.executeUpdate();
DB.close(pstmt);
DB.close(conn); 
 
 %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'replyDeal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    ¹§Ï²Äã£¡»Ø¸´Íê³É<br>
  </body>
</html>
