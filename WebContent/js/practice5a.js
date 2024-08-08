
// practice_menu5a.jspのform要素を取得
const ok = document.querySelector('#ok');
const name = document.querySelector('#name');
const yomi = document.querySelector('#yomi');
const height = document.querySelector('#height');
const weight = document.querySelector('#weight');
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

// OKボタン押下時に入力チェック
function shiftMstMntRegister() {
	document.forms[0].submit();
};
// 半角ｶﾅチェック
function checkHankakuKana(str) {
	// 引数の文字列が半角ｶﾅのみで構成されていればtrue
    if (str.match(/^[\uFF61-\uFF9F]*$/)) {
        return true;
    }
    // そうでないならfalse
    return false;
}
// 数値チェック
function checkNumber(str) {
	// 引数の文字列が半角ｶﾅのみで構成されていればtrue
    if (str.match(/+(?:\.\d+)?/)) {
        return true;
    }
    // そうでないならfalse
    return false;
}