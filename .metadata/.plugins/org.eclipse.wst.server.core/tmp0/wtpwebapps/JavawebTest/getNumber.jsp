<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	随机分给了你一个1到100之间的数，请猜！
	<%
		int number=(int)(Math.random()*100)+1;
		session.setAttribute("count", new Integer(0));
		session.setAttribute("save", new Integer(number));
	%>
	<br>
	输入你的所猜的数吧。
	<form action="result.jsp" method="post" name="form1">
		<input type="text" name="boy">
		<input type="submit" value="确定" name="submit">
	</form>
</body>
</html>