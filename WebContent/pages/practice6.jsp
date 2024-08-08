<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%-- Beanタグのimport --%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 固定値を定義 --%>
<bean:define id="msg" value="ようこそ！" />
<%-- requestからActionForm型の変数dataを定義 --%>
<bean:define id="data" name="prac6form" scope="request" type="form.Practice6ActionForm" />
<%-- data内のkanaプロパティを別途変数で定義 --%>
<bean:define id="kana" name="prac6form" scope="request" type="java.lang.String" property="kana" />
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>次画面</title>
	</head>
	<body>
		<h1>次画面きた！</h1>
		<%-- dataからnameとkanaを表示する --%>
		<%-- EL式 --%>
		${msg}
		${data.getName()}(${kana})様<br />
		<%-- Strutsカスタムタグ --%>
		<bean:write name="msg"/>
		<bean:write name="data" property="name" />(<bean:write name="data" property="kana" />)様<br />
		<%-- スクリプトレット --%>
		<%=msg %>
		<%=data.getName() %>(<%=kana %>)様<br />
		<%-- MessageResourcesを利用 --%>
		${msg}
		<%-- 課題６：選択肢に対応したメッセージをmessageResourceから取得 --%>
		<%-- data内のgenderプロパティと一致するメッセージを表示 --%>
		<bean:message name="data" property="gender" />
		<bean:write name="data" property="name" />
		(<bean:message name="data" property="name" />)
		<bean:message key="keisho.sama" arg0="36" arg1="歳"/>
	</body>
</html:html>