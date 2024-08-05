package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice3ActionForm;

public class Practice3Action extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Practice3ActionForm pra3Form = (Practice3ActionForm)form;
		request.setAttribute("text1", pra3Form.getText1());
		request.setAttribute("text2", pra3Form.getText2());
		request.setAttribute("text3", pra3Form.getText3());

		String str = pra3Form.getText3();
		String strForward = "p3"; // デフォルト値
		String error = "";

		if(str == null || str.equals("")){
			strForward = "prac"; // 入力が空白の場合、元のページを再表示
			error = "必須入力です！";
		}
		request.setAttribute("error2", error);
		return mapping.findForward(strForward);
	}

}
