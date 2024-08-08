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
		<%-- 動かしてみよう①：画面の遷移 --%>
		<ul>
			<li>
				<%-- action属性の属性値追加はsturts-config.xmlで行う --%>
				<%-- タグの追加はtaglibで追加している --%>
				<html:link action="/p1">次画面へ</html:link>
			</li>
		</ul>
		<hr>
		<!--  -->
		<%-- 動かしてみよう②：フォームの作成 --%>
		<form action="http://localhost:8080/struts-test/action1.do" method="post">
			<input type="text" name="MSG" value="${error}"><%-- 課題２：何も入力しなかった時、エラーメッセージを表示 --%>
			<input type="submit" value="ok">
		</form>
		<hr>
		<!--  -->
		<!-- 
		<%-- 動かしてみよう③：ActionFormの利用 --%>
		<html:form method="post" action="action3.do">
			<label for="text01">入力１</label>
			<html:text property="text1" styleId="text01" /><br />
			<label for="text02">入力２</label>
			<html:text property="text2" styleId="text02" /><br />
			<%-- 課題３：必須入力 --%>
			<label for="text03">入力３(必須)</label>
			<%-- 課題３：この入力欄が空の場合、エラーメッセージを表示 --%>
			<html:text property="text3" styleId="text03" /><span style="color:red">${error2}</span><br />
			
			<html:submit>OK</html:submit>
		</html:form>
		<hr>
		-->
		<!--  -->
		<%-- 動かしてみよう④：textareaやボタンの利用 --%>
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
			<html:reset>リセット</html:reset>
		</html:form>
		<hr>
		<!--  -->
		<!-- 
		<%-- 動かしてみよう⑤：checkbox, radio --%>
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
		<hr>
		 -->
		<script type="text/javascript">

		</script>
	</body>
</html:html>