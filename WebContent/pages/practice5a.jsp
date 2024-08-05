<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>アンケート情報登録確認画面</title>
	</head>
	<body>
		<h1>アンケート情報登録確認画面</h1>
		<div>
			<span style="font-size:20pt;">名前：${requestScope.name}</span><br />
			<span style="font-size:20pt;">読み：${requestScope.yomi}</span><br />
			<span style="font-size:20pt;">身長：${requestScope.height}</span><br />
			<span style="font-size:20pt;">体重：${requestScope.weight}kg</span><br />
			<span style="font-size:20pt;">持病：${requestScope.jibyo}</span><br />
			<span style="font-size:20pt;">病名：${requestScope.jibyoName}</span><br />
			<span style="font-size:20pt;">職業：${requestScope.job}</span><br />
			<span style="font-size:20pt;">当てはまっているもの：${requestScope.factor}</span><br />
		</div>
		<html:link action="p5b.do"><button type="button" >送信</button></html:link>
		<html:link action="prac.do"><button type="button" >戻る</button></html:link>
	</body>
</html>
