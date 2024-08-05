<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html>
<%
	String[] strArr = {"高橋","伊藤","野平"};
%>
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>次画面</title>
	</head>
	<body>
		<h1>次画面きた！</h1>
		スクリプトレットで配列ぅ！<br />
		[インデックス]値<br>
		<logic:iterate id="arr" collection="<%= strArr %>" indexId="index">
			[ <bean:write name="index" /> ]<bean:write name="arr" /> <br>
		</logic:iterate>
		リクエストスコープからＡｒｒａｙＬｉｓｔオブジェクトぉ！<br>
		[インデックス]値<br>
		<logic:iterate id="list" name="strList" indexId="index">
			[ <bean:write name="index" /> ]<bean:write name="list" /> <br>
		</logic:iterate>
		リクエストスコープからＦｏｒｍＢｅａｎからのＭａｐオブジェクトぉ！<br>
		[key]値<br>
		<logic:iterate id="map" name="prac8form2" property="strMap">
			[ <bean:write name="map" property="key"/> ]
			<bean:write name="map" property="value"/> <br>
		</logic:iterate>
	</body>
</html:html>
