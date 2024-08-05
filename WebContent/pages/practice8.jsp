<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html>
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>次画面</title>
	</head>
	<body>
		<h1>次画面きた！</h1>
		<logic:notEmpty name="prac8form" property="name" scope="request">
			<logic:equal name="prac8form" property="name" value="高橋">
				ようこそ！たーさん
			</logic:equal>
			<logic:notEqual name="prac8form" property="name" value="高橋">
				高橋さんじゃないのね！
			</logic:notEqual><br />
			<logic:greaterEqual name="prac8form" property="age" value="30" >
				30歳以上なのね！
			</logic:greaterEqual>
			<logic:lessThan name="prac8form" property="age" value="30" >
				30歳未満なのね！
			</logic:lessThan>
		</logic:notEmpty>
			<logic:empty name="prac8form" property="name">
			名前未入力だよ！
		</logic:empty>
	</body>
</html:html>
