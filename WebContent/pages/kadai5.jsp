<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アンケート情報</title>
</head>
<body>
	<h1>アンケート情報</h1>
	氏名:<br><span style="font-size: 20pt">${requestScope.name }</span><br>
	よみがな:<br><span style="font-size: 20pt">${requestScope.rubi }</span><br>
	身長:<br><span style="font-size: 20pt">${requestScope.height }</span><br>
	体重:<br><span style="font-size: 20pt">${requestScope.weight }</span><br>
	持病:<br><span style="font-size: 20pt">${requestScope.sick }</span><br>
	持病「あり」を選択した方は病名:<br><span style="font-size: 20pt">${requestScope.sickName }</span><br>
	職業:<br><span style="font-size: 20pt">${requestScope.job }</span><br>
	当てはまるものをすべて選択:<br><span style="font-size: 20pt">${requestScope.atehamari }</span><br>
	<html:link action="k1"><button>戻る</button></html:link>
	<html:link action="k2"><button>OK</button></html:link>
</body>
</html>