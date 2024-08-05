<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html>
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>メニュー画面</title>
	</head>
	<body>
		<h1>メニュー画面</h1>
		<html:form method="post" action="action6.do">
			氏名：
			<html:text property="name"/><br />
			カナ：
			<html:text property="kana"/><br />
			性別：
			<html:radio property="gender" value="male">男</html:radio>
			<html:radio property="gender" value="female">女</html:radio>
			<html:submit property="subBtn" value="ok"/>
		</html:form>
	</body>
</html:html>