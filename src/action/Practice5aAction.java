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

		Practice5aActionForm pra5aForm = (Practice5aActionForm)form;

		String name = "";
		name = pra5aForm.getName();
		request.setAttribute("name", name);

		String yomi = "";
		yomi = pra5aForm.getYomi();
		request.setAttribute("yomi", yomi);

		String height = "";
		height = pra5aForm.getHeight();
		request.setAttribute("height", height);

		String weight = "";
		weight = pra5aForm.getWeight();
		request.setAttribute("weight", weight);

		String jibyo = "なし";
		String jibyoName = "";
		if(pra5aForm.getJibyo().equals("true")) {
			jibyo = "あり";
			jibyoName = pra5aForm.getJibyoName();
			request.setAttribute("jibyoName", jibyoName);
		}
		request.setAttribute("jibyo", jibyo);

		String job = "";
		job = pra5aForm.getJob();
		request.setAttribute("job", job);

		StringBuffer sb = new StringBuffer();
		String[] factor = pra5aForm.getFactor();
		for(int i=0; i<factor.length; i++) {
			if(factor[i]!=null && !factor[i].equals("")) {
				sb.append(factor[i]);
				if(i<factor.length-1) sb.append(", ");
			}
		}
		request.setAttribute("factor", sb.toString());

		return mapping.findForward("p5a");
	}

}
