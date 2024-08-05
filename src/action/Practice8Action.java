package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice8ActionForm;

public class Practice8Action extends Action {
	public ActionForward execute(
		ActionMapping mapping,
		ActionForm form,
		HttpServletRequest request,
		HttpServletResponse response) throws Exception {
			Practice8ActionForm prac8form = (Practice8ActionForm)form;
			request.setAttribute("prac8form", prac8form);
			return mapping.findForward("p8");
	}
}
