package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.LoginActionForm;

public class LoginAction extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		LoginActionForm loginForm = (LoginActionForm)form;
		request.setAttribute("account", loginForm.getAccount());
		request.setAttribute("pass", loginForm.getPass());

		String str = loginForm.getAccount();
		String strForward = "false"; // デフォルト値
		String error = "ログイン失敗";

		String userword = "systra";
		String password = "12345";

		if(loginForm.getAccount().equals(userword)){
			if(loginForm.getPass().equals(password)) {
				strForward = "success"; // 入力が空白の場合、元のページを再表示
				error = "";
			}
		}
		request.setAttribute("error", error);
		return mapping.findForward(strForward);
	}

}
