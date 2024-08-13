
// practice_menu5a.jspのform要素を取得
const name = document.querySelector('#name');			// 氏名
const kana = document.querySelector('#kana');			// カナ
const height = document.querySelector('#height');		// 身長
const weight = document.querySelector('#weight');		// 体重
const jibyo = document.querySelector('#jibyo');			// 持病
const jibyoArea = document.querySelector('#jibyoArea');	// 病名
const job = document.querySelector('#job');				// 職業
const factor = document.querySelector('#factor');		// 選択肢
const ok = document.querySelector('#ok');				// OKボタン
const reset = document.querySelector('#reset');			// リセットボタン
let cnt = 0;

// 初期表示時
window.addEventListener('DOMContentLoaded', function(){
	inputCheck(jibyo.value);
})

//リセットボタン押下時
reset.addEventListener('click', function() {
	name.value = '';
	kana.value = '';
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
	// 持病欄が'あり'なら病名欄を入力できるようにする
	if(value == 'あり') {
		jibyoArea.disabled = false;
	}else {
		jibyoArea.disabled = true;
	}
};

// OKボタン押下時に入力チェック
function prac5aRagister() {
	
	let errorMsg = '';
	
	// 氏名→1文字以上10文字以下
	if(checkMinLength(name.value,1) || checkMaxLength(name.value,10)){
		errorMsg = errorMsg + '氏名は1文字以上10文字以内で入力してください。<br>';
		name.style.backgroundColor = 'red';
	}
	// カナ→1文字以上20文字以下、半角カナ
	if(checkHankakuKana(kana.value) || checkMinLength(kana.value,1) || checkMaxLength(kana.value,20)){
		errorMsg = errorMsg + 'カナは半角ｶﾅ、1文字以上20文字以内で入力してください。<br>';
		kana.style.backgroundColor = 'red';
	}
	// 身長→チェック不要
	// 体重→数値チェック
	if(checkNumber(weight.value)){
		errorMsg = errorMsg + '体重は半角数字、0.0～999.9の範囲で入力してください。<br>';
	}
	
	// 入力チェックで弾かれている場合は送信しない
    if (errorMsg) {
        alert(errorMsg);
        // エラー
        return false;
    }
    // チェックをすべてクリアしている場合、送信する
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
	// 引数の文字列が数値のみで構成されていればtrue
	// 0.0 ～ 999.9
    if (str.match(/^\d{1,3}\.?\d*$/)) {
        return true;
    }
    // そうでないならfalse
    return false;
}
// 文字数チェック
function checkMinLength(str, limit){
	// 引数の文字列の長さがlimit未満の場合false、limit以上ならtrue
	if(str.length()<limit)return false;
	return true;
}
function checkMaxLength(str, limit){
	// 引数の文字列の長さがlimit超の場合false、limit以内ならtrue
	if(str.length()>limit)return false;
	return true;
}

// 選択✓

