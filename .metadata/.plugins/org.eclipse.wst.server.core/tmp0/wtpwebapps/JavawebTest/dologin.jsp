<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=request.getParameter("name");
		String psw=request.getParameter("psw");
		if(name==""||psw==""){
	%>
		<jsp:forward page="login.jsp">
			<jsp:param value="<%=name%>" name="name"/>
			<jsp:param value="<%=psw %>" name="psw"/>
		</jsp:forward>
	<%
		}else{
	%>
		<jsp:forward page="success.jsp">
			<jsp:param value="<%=name %>" name="name"/>
		</jsp:forward>
	
	<%
		}
	%>
</body>
</html>