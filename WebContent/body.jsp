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
		<html:form method="post" action="body.do">
			<label for="name">氏名</label>
			<html:text property="name" styleId="name" /><br />
			<label for="yomi">ヨミガナ</label>
			<html:text property="yomi" styleId="yomi" /><br />
			<label for="height">身長</label><br />
			<html:radio property="height" value="1">100cm ～ 120cm</html:radio><br />
			<html:radio property="height" value="2">120cm ～ 140cm</html:radio><br />
			<html:radio property="height" value="3">140cm ～ 160cm</html:radio><br />
			<html:radio property="height" value="4">160cm ～ 180cm</html:radio><br />
			<html:radio property="height" value="5">180cm ～ 200cm</html:radio><br />
			<br />
			<label for="jibyo">持病</label>
			<html:radio property="jibyo" value="あり">あり</html:radio>
			<html:radio property="jibyo" value="なし">なし</html:radio><br />
			<html:textarea property="jibyoArea" styleId="jibyoarea" /><br />
			<br />
			<label for="job">職業</label>
			<html:select property="job" size="3">
			<html:option value="1">会社員</html:option>
			<html:option value="2">公務員</html:option>
			<html:option value="3">自営業</html:option>
			</html:select><br />
			<label for="factor">当てはまるもの全て選択してください。</label><br />
			<html:checkbox property="factor" value="1">タバコを吸う</html:checkbox>
			<html:checkbox property="factor" value="2">お酒を飲む</html:checkbox>
			<html:checkbox property="factor" value="3">妊娠している（女性のみ）</html:checkbox>
			<html:checkbox property="factor" value="4">薬を処方されている</html:checkbox>
			<span style="color:red">${error}</span><br />
			<html:submit styleId="ok">OK</html:submit>
			<button type="button" id="reset">RESET</button>
		</html:form>
</div>
<script src="js/body.js">

	const ok = document.querySelector('#ok');
	const jibyo = document.querySelector('#jibyo');
	const jibyoArea = document.querySelector('#jibyoArea');
	const pass = document.querySelector('#pass');
	const reset = document.querySelector('#reset');
	let cnt = 0;

	// 初期表示時
	window.addEventListener('DOMContentLoaded', function(){
		jibyoArea.disabled=true;
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
		if(cnt >= 2) {
			jibyoArea.disabled = false;
		}else {
			jibyoArea.disabled = true;
		}
	};
</script>
</body>
</html:html>