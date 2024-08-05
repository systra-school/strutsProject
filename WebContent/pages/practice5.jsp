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
			<span style="font-size:20pt;">得意な言語：${requestScope.lang}</span><br />
			<span style="font-size:20pt;">性別：${requestScope.sex}</span><br />
			<span style="font-size:20pt;">好きな動物：${requestScope.animal}</span><br />
			<span style="font-size:20pt;">出身地：${requestScope.homeTown}</span><br />
			<span style="font-size:20pt;">${requestScope.town}</span><br />
		</div>
		<a href="#" onclick="history.back();" ><button type="button">戻る</button></a>
	</body>
</html>
