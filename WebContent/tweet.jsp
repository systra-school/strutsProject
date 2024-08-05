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
		<html:form method="post" action="tweet.do">
			カテゴリ：<html:text property="category" /><br/>
			タイトル：<html:text property="title" /><br/>
			<html:submit value="GO" />
		</html:form>
		<html:form method="post" action="action8-2.do">
			何もないけど取り敢えず
			<html:submit value="GO" />
		</html:form>
	</body>
</html:html>
