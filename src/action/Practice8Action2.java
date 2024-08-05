package action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice8ActionForm2;

	public class Practice8Action2 extends Action {

	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,
		HttpServletResponse response) throws Exception {
			Practice8ActionForm2 prac8form2 = (Practice8ActionForm2)form;
			ArrayList<String> strList = new ArrayList<String>();
			strList.add("香川");
			strList.add("福岡");
			strList.add("対馬");
			request.setAttribute("strList",strList);
			HashMap<String, String> strMap = new HashMap<String, String>();
			strMap.put("高橋", "takahashi");
			strMap.put("伊藤", "ito");
			strMap.put("野平", "nohira");
			prac8form2.setStrMap(strMap);
			request.setAttribute("prac8form2", prac8form2);
			return mapping.findForward("p8-2");
	}
}
