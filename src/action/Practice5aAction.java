package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice5aActionForm;

public class Practice5aAction extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// フォーム情報取得
		Practice5aActionForm prac5Form = (Practice5aActionForm)form;
		// フォーム情報をrequestに格納
		request.setAttribute("name", prac5Form.getName());
		request.setAttribute("kana", prac5Form.getKana());
		request.setAttribute("height", prac5Form.getHeight());
		request.setAttribute("weight", prac5Form.getWeight());
		request.setAttribute("jibyo", prac5Form.getJibyo());
		request.setAttribute("jibyoArea", prac5Form.getJibyoArea());
		request.setAttribute("job", prac5Form.getJob());
		StringBuffer sb = new StringBuffer();
		String[] factor = prac5Form.getFactor();
		for(int i=0; i<factor.length; i++) {
			if(factor[i]!=null && !factor[i].equals("")) {
				sb.append(factor[i]);
				if(i<factor.length-1) sb.append(", ");
			}
		}
		request.setAttribute("factor", sb.toString());

		String strForward = "p5a"; // デフォルト値
		
		return mapping.findForward(strForward);
	}

}
