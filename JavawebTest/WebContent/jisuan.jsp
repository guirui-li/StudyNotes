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
		String number1str=request.getParameter("number1");
		String number2str=request.getParameter("number2");
		String optionstr=request.getParameter("select");
		String sum=request.getParameter("sum");
		if(number1str==null||number2str==null||optionstr==null||sum==null){
			number1str="";
			number2str="";
			optionstr="+";
			sum="";
		}
	%>
	计算器
	<form action="dojisuan.jsp" name="form1" method="post" id="form1">
		<label>
			<input type="text" name="number1" value="<%= number1str%>"/>
		</label>
		<label>
			<select name="select">
				<option value="+" selected="selected">+</option>
				<option value="-" >-</option>
				<option value="*" >*</option>
				<option value="/" >/</option>
			</select>
		</label>
		<label>
			<input type="text" name="number2" value="<%= number2str%>">
		</label>
		=
		<label>
			<input type="text" name="sum" value="<%=sum %>">
		</label>
		<p>
			<label>
				<input type="submit" name="Submit" value="计算" />
			</label>
		</p>
	</form>
	
</body>
</html>