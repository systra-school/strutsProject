package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class Practice2Action extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String str = request.getParameter("MSG");
		String strForward = "p1"; // デフォルト値
		String error = "";
		if(str == null || str.equals("") || str.equals("必須入力です！")){
			strForward = "prac"; // 入力が空白の場合、元のページを再表示
			error = "必須入力です！";
		}
		request.setAttribute("error", error);
		return mapping.findForward(strForward);
	}

}
