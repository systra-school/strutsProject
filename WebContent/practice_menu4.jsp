<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html>
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>メニュー画面</title>
	</head>
	<body>
		<h1>メニュー画面</h1>
		<html:form method="post" action="action8.do">
			氏名：<html:text property="name" /><br/>
			年齢：<html:text property="age" /><br/>
			<html:submit value="GO" />
		</html:form>
		<hr>
		<html:form method="post" action="action8-2.do">
			何もないけど取り敢えず
			<html:submit value="GO" />
		</html:form>
		<hr>
	</body>
</html:html>
