<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html>
<html:html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>メニュー画面</title>
	</head>
	<body>
		<h1>メニュー画面</h1>
		<ul>
			<li>
				<!-- action属性の属性値追加はsturts-config.xmlで行う -->
				<!-- タグの追加はtaglibで追加している -->
				<html:link action="/p1">次画面へ</html:link>
			</li>
		</ul>
		<form action="http://localhost:8080/struts-test/action1.do" method="post">
			<input type="text" name="MSG" value="${error}">
			<input type="submit" value="ok">
		</form>
		<html:form method="post" action="action3.do">
			<label for="text01">入力１</label>
			<html:text property="text1" styleId="text01" /><br />
			<label for="text02">入力２</label>
			<html:text property="text2" styleId="text02" /><br />
			<!-- -->
			<label for="text03">入力３(必須)</label>
			<html:text property="text3" styleId="text03" /><span style="color:red">${error2}</span><br />
			<!-- -->
			<html:submit>OK</html:submit>
		</html:form>
		<html:form method="post" action="action4.do">
			<label for="text">テキスト</label>
			<html:text property="text" styleId="text" /><br />
			<label for="pass">パスワード</label>
			<html:password property="pass" styleId="pass" /><br />
			<label for="area">エリア</label>
			<html:textarea property="area" styleId="area" /><br />
			<label for="hidden">hidden</label>
			<html:hidden property="hidden" value="hoge" /><br />
			<html:submit>OK</html:submit>
		</html:form>
		<html:form method="post" action="action5.do">
			得意な言語：
			<html:checkbox property="cbLang1">Java</html:checkbox>
			<html:checkbox property="cbLang2">C</html:checkbox>
			<html:checkbox property="cbLang3">PHP</html:checkbox><br />
			性別：
			<html:radio property="rdSex" value="1">男</html:radio>
			<html:radio property="rdSex" value="2">女</html:radio><br />
			この中で一番好きな動物：
			<html:radio property="rdAnimal" value="牛">牛</html:radio>
			<html:radio property="rdAnimal" value="ペンギン">ペンギン</html:radio>
			<html:radio property="rdAnimal" value="ライオン">ライオン</html:radio>
			<html:radio property="rdAnimal" value="伊藤君">伊藤君</html:radio>
			<br />
			出身地：
			<html:select property="cmboHomeTown" size="4">
			<html:option value="1">福岡県</html:option>
			<html:option value="2">大分県</html:option>
			<html:option value="3">熊本県</html:option>
			<html:option value="4">佐賀県</html:option>
			</html:select><br />
			住んだがある町：
			<html:select property="cmboTown" size="4" multiple="true">
			<html:option value="1">福岡県</html:option>
			<html:option value="2">大分県</html:option>
			<html:option value="3">熊本県</html:option>
			<html:option value="4">佐賀県</html:option>
			</html:select>
			<br />
			「Shift」押しながらクリックすると複数選択可能<br />
			<html:submit property="subBtn" value="ok"/>
		</html:form>
		<html:form method="post" action="action5a.do">
			<label for="name">氏名：</label>
			<html:text property="name" styleId="name" /><br />
			<label for="yomi">よみ：</label>
			<html:text property="yomi" styleId="yomi" /><br />
			身長：
			<html:radio property="height" value="100～120cm">100～120cm</html:radio>
			<html:radio property="height" value="121～160cm">121～160cm</html:radio>
			<html:radio property="height" value="161～200cm">161～200cm</html:radio><br />
			<label for="weight">体重：</label>
			<html:text property="weight" styleId="weight" />kg<br />
			持病：
			<html:radio property="jibyo" value="true">あり</html:radio>
			<html:radio property="jibyo" value="false">なし</html:radio><br />
			<label for="jibyoName">持病「あり」を選択した方は詳しい病名：</label>
			<html:textarea property="jibyoName" styleId="jibyoName" /><br />
			<label for="job">職業：</label>
			<html:text property="job" styleId="job" /><br />
			当てはまるものをすべて選択しなさい：
			<html:checkbox property="factor1" value="タバコを吸う">タバコを吸う</html:checkbox>
			<html:checkbox property="factor2" value="お酒を飲む">お酒を飲む</html:checkbox>
			<html:checkbox property="factor3" value="妊娠している">妊娠している</html:checkbox>
			<html:checkbox property="factor4" value="薬を処方されている">薬を処方されている</html:checkbox><br />
			<html:submit>OK</html:submit>
		</html:form>
		<!-- 
		 -->
		<script type="text/javascript">

		</script>
	</body>
</html:html>