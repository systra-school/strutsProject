package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice4ActionForm;

public class Practice4Action extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Practice4ActionForm pra4Form = (Practice4ActionForm)form;
		request.setAttribute("text", pra4Form.getText());
		request.setAttribute("pass", pra4Form.getPass());
		request.setAttribute("area", pra4Form.getArea());
		request.setAttribute("hidden", pra4Form.getHidden());

		return mapping.findForward("p4");
	}

}
