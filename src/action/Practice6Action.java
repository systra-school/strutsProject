package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice6ActionForm;

public class Practice6Action extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
								  HttpServletRequest request, HttpServletResponse response) throws Exception {

		Practice6ActionForm prac6form = (Practice6ActionForm)form;
		request.setAttribute("prac6form", prac6form);
		return mapping.findForward("p6");
	}
}
