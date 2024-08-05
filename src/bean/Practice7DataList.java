package bean;

import java.util.ArrayList;

public class Practice7DataList {
	/* 追加用リスト */
	private ArrayList<String> list;
	/* メッセージKey */
	private String resultMsg;
	private String removeMsg;
	/* 選択項目固定値 */
	private final String[] empDataArr = {"高橋", "西岡", "野平", "伊藤"};
	/* コンストラクタ */
	public Practice7DataList(){
		list = new ArrayList<String>();
	}
	/* setter */
	public void add(String data){
		list.add(data);
	}
	public void remove(String data) {
		list.remove(data);
	}
	/* getter */
	public ArrayList<String> getValues(){
		return list;
	}
	/* メッセージ取得 */
	public String getResultMsg() {
		return resultMsg;
	}
	/* メッセージセッター（ついでにkey生成 */
	public void setResultMsg(String resultMsg) {
		this.resultMsg = "resultMsg." + resultMsg;
	}
	public void setAddMsg(String addMsg) {
		this.resultMsg = "addMsg." + addMsg;
	}
	public void setRemoveMsg(String removeMsg) {
		this.removeMsg = "removeMsg." + removeMsg;
	}
	/* 選択項目取得用ゲッター */
	public String[] getEmpDataArr() {
		return empDataArr;
	}

}
