
<%@ page contentType="text/html;charset=gb18030"%>
<%@page import ="java.sql.*, java.io.*, com.bjsxt.bbs.*, java.util.*" %>
<%

request.setCharacterEncoding("GBK");

int id = Integer.parseInt(request.getParameter("id"));

int rootId = Integer.parseInt(request.getParameter("rootId"));
Article a = null;


Connection conn = DB.getConn();
String sql = "select * from article where id ="+ id;
Statement stmt = DB.createStmt(conn);
ResultSet rs = DB.executeQuery(stmt, sql);
if(rs.next()){
	a = new Article();
	a.initFromRs(rs);
}


DB.close(rs);
DB.close(stmt);
DB.close(conn);

if(a == null){
%>
	您寻找的帖子不存在
<% 
	return;
}

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Java|Java�㈣������_�拌�ㄨ�������硅�ら�|ChinaJavaWorld褰�褰��㈢�����硅�ら� : 椴����╂��java������绂����╄�よ���㈤���㈤���ユ病楹�璐稿������烘�宠����濞���绂��ц�� ...</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td width="140"><a href="http://bbs.chinajavaworld.com/index.jspa"><img src="images/header-left.gif" alt="Java|Java�㈣������_�拌�ㄨ�������硅�ら�|ChinaJavaWorld褰�褰��㈢�����硅�ら�" border="0"></a></td>
      <td><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%"></td>
      <td width="1%"><img src="images/header-right.gif" alt="" border="0"></td>
    </tr>
  </tbody>
</table>
<br>
<div id="jive-flatpage">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><p class="jive-breadcrumbs"> <a href="http://bbs.chinajavaworld.com/index.jspa">�㈣�宠��椴�</a> &#187; <a href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld褰�褰��㈢�����硅�ら�|Java�㈣������_�拌�ㄨ�������硅�ら�</a> &#187; <a href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java 2 Platform, Standard Edition (J2SE)</a> &#187; <a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java�����╄��*椴���褰��叉�冲�</a> </p>
          <p class="jive-page-title"> 主题：回复</p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
  <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td class="jive-icon"><a href="http://bbs.chinajavaworld.com/post%21reply.jspa?threadID=744236"><img src="images/reply-16x16.gif" alt="绂��磋�楹��ゆ���版��よ��" border="0" height="16" width="16"></a></td>
          <td class="jive-icon-label"><a id="jive-reply-thread" href="replay.jsp">回复本主题</a></td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                 
                		<form action="replyDeal.jsp" method="post">
                			<input type="hidden" name="pid" value="<%=id %>"/>
                			<input type="hidden" name="rootId" value="<%=rootId%>"/>
                		 title: <input type="text" name="title"><br>
                		 context: <textarea name="cont" rows="15" cols="80"></textarea><br>
                		 	<input type="submit" value="submit" >
                  		</form>
               	</div>
              </div>
       		</div>
            
                	
                
            <div class="jive-message-list-footer">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr>
                    <td nowrap="nowrap" width="1%"></td>
                    <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img src="images/arrow-left-16x16.gif" alt="璺�纰�绂��寸����版��よ�����ㄥ�ら��" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">璺�纰�绂��寸����版��よ�����ㄥ�ら��</a> </td>
                          </tr>
                        </tbody>
                      </table></td>
                    <td nowrap="nowrap" width="1%">&nbsp;</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div></td>
        <td width="1%"></td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
