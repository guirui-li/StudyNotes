<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! //放到这个里面的内容会被放到_jspService方法之外，即放到本文件生成的java类里，而不在这里面的代码，全部转化后放到_jspService方法里
	//JavaWeb\.metadata\.plugins\org.eclipse.wst.server.core\tmp0里面有生成的java文件
	static{
		System.out.println("正在装载由JSP生成的Servlet!");
	}
	private int globalCount = 0;
	//覆盖jspInit方法
	public void jspInit(){
		System.out.println("正在初始化JSP!");
	}
	//覆盖jspDestroy方法
	public void jspDestroy(){
		System.out.println("JSP已经被销毁！");
	}
	%>
	localCount:
	<%
	int localCount = 0;
	out.print(++localCount);
	%>
	<br>
	globalCount:<%=++globalCount %>

</body>
</html>