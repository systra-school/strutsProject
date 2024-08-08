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
		Practice5aActionForm bodyForm = (Practice5aActionForm)form;
		// フォーム情報をrequestに格納
		request.setAttribute("name", bodyForm.getName());
		request.setAttribute("yomi", bodyForm.getYomi());
		request.setAttribute("height", bodyForm.getHeight());
		request.setAttribute("weight", bodyForm.getWeight());
		request.setAttribute("jibyo", bodyForm.getJibyo());
		request.setAttribute("jibyoArea", bodyForm.getJibyoArea());
		request.setAttribute("job", bodyForm.getJob());
		StringBuffer sb = new StringBuffer();
		String[] factor = bodyForm.getFactor();
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
