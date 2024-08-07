
const ok = document.querySelector('#ok');
const jibyo = document.querySelector('#jibyo');
const jibyoArea = document.querySelector('#jibyoArea');
const pass = document.querySelector('#pass');
const reset = document.querySelector('#reset');
let cnt = 0;

// 初期表示時
window.addEventListener('DOMContentLoaded', function(){
	jibyoArea.disabled=true;
	inputCheck(account.value);
	inputCheck(pass.value);
})

//リセットボタン押下時
reset.addEventListener('click', function() {
	name.value = '';
	yomi.value = '';
	jibyoArea.value = '';
	inputCheck(account.value);
	inputCheck(pass.value);
});

//持病選択時
jibyo.addEventListener('click', function() {
	inputCheck(this.value);
});

// 持病フォーカスアウト時
jibyo.addEventListener('blur', function(){
	inputCheck(this.value)
});

// フォーム入力チェック処理
const inputCheck = function(value) {
	if(value == 'あり') {
		jibyoArea.disabled = false;
	}else {
		jibyoArea.disabled = true;
	}
};