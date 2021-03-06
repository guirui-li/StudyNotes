<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.guirui.demo04.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>书本信息</title>
	<style type="text/css">
		body{
			position: relative;
			margin: 0;
			pause: 0;
		}
		#div{
			float: right;
			color: red;
		}
		#a{
			color:red;
		}
		#font{
			margin: auto;
		}
		#table{
			margin:auto;
			text-align: center;
		}
	</style>
</head>
<body>
	<%
		
		String name=(String)request.getSession().getAttribute("name");
		int pagee=(Integer)request.getAttribute("currPage");
		int pages=(Integer)request.getAttribute("pages");
	%>
	<div id="div">
		欢迎<font style="color:blue"><%=name%></font>访问此网页|
		<a href="experiment08/login.jsp">退出登录</a>
	</div>
	<div id="font">
		&nbsp;顺序取得数据第<%=pagee %>页，共<%=pages %>页
	</div>
	<table border="1" id="table">
		<caption >所有书本信息</caption>
		<tr>
			<th>书籍编号</th>
			<th>书名</th>
			<th>出版社</th>
			<th>作者</th>
			<th>价格</th>
		</tr>
		<%
			@SuppressWarnings("unchecked")
			List<Book> list=(List<Book>)request.getAttribute("list");
			for(Book b:list){
		%>
		<tr>
			<td><%=b.getBookID() %></td>
			<td><%=b.getBookName() %></td>
			<td><%=b.getPublishing_House() %></td>
			<td><%=b.getAuthor() %></td>
			<td><%=b.getPrice() %></td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan=5>
				<%=request.getAttribute("bar") %>
			</td>
		</tr>
	</table>
</body>
</html>