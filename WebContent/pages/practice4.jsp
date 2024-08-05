<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>次画面</title>
	</head>
	<body>
		<h1>次画面きた！</h1>
		<div>
			<span style="font-size:20pt;">${requestScope.text}</span><br />
			<span style="font-size:20pt;">${requestScope.pass}</span><br />
			<span style="font-size:20pt;">${requestScope.area}</span><br />
			<span style="font-size:20pt; color:red;">${requestScope.hidden}</span><br />
		</div>
		<html:link action="prac.do"><button type="button" >戻る</button></html:link>
	</body>
</html>
