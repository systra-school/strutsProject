<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html:html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>アンケート情報画面</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- 課題５：複数項目のフォームのバリデーションチェック --%>
<div class="container">
<h1>メニュー画面</h1>
		<html:form method="post" action="action5a.do">
			<label for="name">氏名</label>
			<html:text property="name" styleId="name" /><br />
			<label for="kana">ヨミガナ</label>
			<html:text property="kana" styleId="kana" /><br />
			<label for="height">身長</label><br />
			<html:radio property="height" value="100cm ～ 120cm" >100cm ～ 120cm</html:radio><br />
			<html:radio property="height" value="120cm ～ 140cm">120cm ～ 140cm</html:radio><br />
			<html:radio property="height" value="140cm ～ 160cm">140cm ～ 160cm</html:radio><br />
			<html:radio property="height" value="160cm ～ 180cm">160cm ～ 180cm</html:radio><br />
			<html:radio property="height" value="180cm ～ 200cm">180cm ～ 200cm</html:radio><br />
			<br />
			<label for="name">体重</label>
			<html:text property="weight" styleId="weight" /><br />
			<label for="jibyo">持病</label>
			<html:radio styleId="jibyo-ari" property="jibyo" value="あり">あり</html:radio>
			<html:radio styleId="jibyo-nashi" property="jibyo" value="なし">なし</html:radio><br />
			<html:textarea property="jibyoArea" styleId="jibyoArea" /><br />
			<br />
			<label for="job">職業</label>
			<html:select property="job" size="3" styleId="job">
			<html:option value="1">会社員</html:option>
			<html:option value="2">公務員</html:option>
			<html:option value="3">自営業</html:option>
			</html:select><br />
			<label for="factor">当てはまるもの全て選択してください。</label><br />
			<html:checkbox property="factor" value="タバコを吸う">タバコを吸う</html:checkbox>
			<html:checkbox property="factor" value="お酒を飲む">お酒を飲む</html:checkbox>
			<html:checkbox property="factor" value="妊娠している（女性のみ）">妊娠している（女性のみ）</html:checkbox>
			<html:checkbox property="factor" value="薬を処方されている">薬を処方されている</html:checkbox>
			<span style="color:red">${error}</span><br />
			<html:submit styleId="ok" onclick="prac5aRagister()">OK</html:submit>
			<html:button property="reset" styleId="reset">RESET</html:button>
		</html:form>
</div>
<script src="js/practice5a.js"></script>
</body>
</html:html>