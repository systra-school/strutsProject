<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アンケート</title>
</head>
<body onload="buttonDis()">
	<h1>アンケート</h1>
	<html:form method="post" action="kadai5.do">
		氏名:
		<html:text property="name" styleId="name" onblur="checkText('name', '氏名', this.value, 10)" />
		<br>
		よみがな:
		<html:text property="rubi" styleId="rubi" onblur="checkText('rubi', 'ふりがな', this.value, 10)" />
		<br>
		身長:
		<html:select property="height">
			<html:option value="1">100～120cm</html:option>
			<html:option value="2">121～140cm</html:option>
			<html:option value="3">141～160cm</html:option>
			<html:option value="4">161～180cm</html:option>
			<html:option value="5">181～200cm</html:option>
		</html:select>
		<br>
		体重:
		<html:text property="weight" styleId="weight" onblur="checkNumber('weight', '体重', this.value, 4)" />
		<br>
		持病:
		<html:radio property="sick" styleId="sick1" value="0" onclick="checkRadio()" />あり
		<html:radio property="sick" styleId="sick2" value="1" onclick="checkRadio()" />なし
		<br>
		持病「あり」を選択した方は病名:
		<html:text property="sickName" styleId="sickName" disabled="true" />
		<br>
		職業:
		<html:select property="job" onchange="allCheck()">
			<html:option value="1">会社員</html:option>
			<html:option value="2">公務員</html:option>
			<html:option value="3">自営業</html:option>
			<html:option value="4">アルバイト</html:option>
			<html:option value="5">無職</html:option>
		</html:select>
		<br>
		当てはまるものをすべて選択:<br>
		<html:checkbox property="atehamari1">たばこを吸う</html:checkbox>
		<html:checkbox property="atehamari2">お酒を飲む</html:checkbox>
		<html:checkbox property="atehamari3">妊娠している(女性のみ)</html:checkbox>
		<html:checkbox property="atehamari4">薬を処方されている</html:checkbox>
		<html:checkbox property="atehamari5">寝不足</html:checkbox>
		<html:checkbox property="atehamari6">薬物中毒</html:checkbox>
		<br>
		<html:submit styleId="okButton" value="OK" />
	</html:form>
<script src="js/script.js" ></script>
</body>
</html>