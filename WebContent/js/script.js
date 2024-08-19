//最初のボタン非活性
function buttonDis() {
	document.getElementById("okButton").disabled = true;
}
let nameBoo = false;
let rubiBoo = false;
let weightBoo = false;
//テキストの入力判定
function checkText(id, name, value, length) {
	if(value == "" || value.length > length){
		alert(name + "は1文字以上" + length + "文字以内で入力してください");
		document.getElementById(id).style.backgroundColor = "red";
	}else{
		document.getElementById(id).style.backgroundColor = "white";
		if(id == "name"){
			nameBoo = true;
		}else if(id == "rubi"){
			rubiBoo = true;
		}else if(id == "weight"){
			weightBoo = true;
		}
	}
}
//数値の入力判定
function checkNumber(id, name, value, length) {
	if(!isFinite(value)){
		alert(name + "は数値を入力してください");
		document.getElementById(id).style.backgroundColor = "red";
	}else{
		checkText(id, name, value, length);
	}
}
//ラジオボタンの入力判定
function checkRadio() {
	if(document.getElementById("sick1").checked){
		document.getElementById("sickName").disabled = false;
	}else{
		document.getElementById("sickName").disabled = true;
	}
}
//すべての判定
function allCheck() {
	if(nameBoo && rubiBoo && weightBoo){
		document.getElementById("okButton").disabled = false;
	}
}
