package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bean.Practice7DataList;
import form.Practice7ActionForm;

public class Practice7Action extends Action {

	public ActionForward execute(
		ActionMapping mapping,
		ActionForm form,
		HttpServletRequest request,
		HttpServletResponse response) throws Exception {
		Practice7ActionForm prac7form = (Practice7ActionForm)form;

		// dataListをsessionから取得
		HttpSession session = request.getSession();
		Practice7DataList dataList = (Practice7DataList)session.getAttribute("dataList");

		// 初回起動時はdataListを生成
		if(dataList == null){
			dataList = new Practice7DataList();
		}

		// 選択した名前
		String addData = ""; // 追加用データ(左のselect)
		String delData = ""; // 削除用データ(右のselect)

		/* 初回動作ではActionFormが生成されていないので回避 */
//		if(prac7form.getMode() != null || prac7form.getMode().equals("")) {
//			for(String entity : dataList.getValues()) {
//
//			}
//		}

		// 画面操作がされていない場合
		if(prac7form != null){
			addData = prac7form.getEmpSelect();
			delData = prac7form.getAddSelect();
		}else{
			dataList.setResultMsg("NONE");	// 追加ボタンを押下してください！
		}
		dataList.setRemoveMsg("DEFAULT");
		// 追加/削除処理
		String mode = prac7form.getMode();
		if(mode.equals("追加>")) {
			// 追加処理
			if(addData != null && !addData.equals("")){
				boolean addFlg = true;
				/* 追加項目と同じ項目は追加しない */
				for(int i = 0; i < dataList.getValues().size(); i++){
					// 選択した名前が既にある場合(不具合)
					if(addData.equals(dataList.getValues().get(i))){
						addFlg = false;
						dataList.setResultMsg("NG");	// 既に追加されています！
						break;
					}
				}
				// 問題なければdataListに追加
				if(addFlg){
					dataList.add(addData);
					dataList.setResultMsg("OK");	// 追加しました！
				}
			}
		}else if(mode.equals("<削除")) {
			// 削除処理
			if(delData != null && !delData.equals("")){
				boolean delFlg = false;
				/* 追加項目と同じ項目は追加しない */
				for(int i = 0; i < dataList.getValues().size(); i++){
					// 選択した名前がリストにある場合、削除する
					if(delData.equals(dataList.getValues().get(i))){
						delFlg = true;
						dataList.getValues().remove(i); // リストからデータを削除
						dataList.setRemoveMsg("OK");	// 削除しました
						break;
					}
				}
				// 削除されるデータがなければエラーメッセージ
				if(!delFlg){
					dataList.add(addData);
					dataList.setRemoveMsg("NG");	// 存在しないユーザーです！
				}
			}else {
				dataList.setRemoveMsg("NONE");	// 誰もいません
			}
		}

		// dataListをsessionに返す
		session.setAttribute("dataList", dataList);
		return mapping.findForward("prac7");
	}
}