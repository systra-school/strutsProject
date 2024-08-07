<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html>
<html:html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>入力画面</title>
</head>
<body>
<div class="container">
<h1>ログイン画面</h1>
		<html:form method="post" action="login.do">
			<label for="account">アカウント</label>
			<html:text property="account" styleId="account" /><br />
			<label for="pass">パスワード</label>
			<html:password property="pass" styleId="pass" /><br />
			<span style="color:red">${error}</span><br />
			<html:submit styleId="ok">OK</html:submit>
			<button type="button" id="reset">RESET</button>
		</html:form>
</div>
<script>

	const ok = document.querySelector('#ok');
	const account = document.querySelector('#account');
	const pass = document.querySelector('#pass');
	const reset = document.querySelector('#reset');
	let cnt = 0;

	// 初期表示時
	window.addEventListener('DOMContentLoaded', function(){
		ok.disabled=true;
		${error = null}
		inputCheck(account.value);
		inputCheck(pass.value);
	})

	//リセットボタン押下時
	reset.addEventListener('click', function() {
		account.value = '';
		pass.value = '';
		inputCheck(account.value);
		inputCheck(pass.value);
	});
	// アカウントフォーカスアウト時
	account.addEventListener('blur', function(){
		inputCheck(this.value)
	})
	// パスワードフォーカスアウト時
	pass.addEventListener('blur', function(){
		inputCheck(this.value)
	})
	// フォーム入力チェック処理
	const inputCheck = function(value) {
		if(value == null || value == "") {
			cnt--;
			if(cnt < 0) { //入力欄が空なのにさらにフォーカス外れたとき
				cnt = 0;
			}
		}else {
			cnt++;
			if(cnt > 2) { //入力欄に値が入っているのにさらにフォーカス外れたとき
				cnt = 2;
			}
		}
		//ok.disabled = (cnt >= 2);
		if(cnt >= 2) {
			ok.disabled = false;
		}else {
			ok.disabled = true;
		}
	};
</script>
</body>
</html:html>