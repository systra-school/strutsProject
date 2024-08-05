package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.Practice5ActionForm;

public class Practice5Action extends Action {
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Practice5ActionForm pra5Form = (Practice5ActionForm)form;

		StringBuffer sb = new StringBuffer();
		if(pra5Form.isCbLang1()){
			sb.append("java");
		}
		if(pra5Form.isCbLang2()){
			if(pra5Form.isCbLang1())sb.append("、");
			sb.append("C");
		}
		if(pra5Form.isCbLang3()){
			if(pra5Form.isCbLang1() || pra5Form.isCbLang2())sb.append("、");
			sb.append("PHP");
		}
		request.setAttribute("lang", sb.toString());

		String strSex = "";
		if("1".equals(pra5Form.getRdSex())){
			strSex = "男";
		}else{
			strSex = "女";
		}
		request.setAttribute("sex", strSex);

		String strAnimal = "";
		if(pra5Form.getRdAnimal() == null || pra5Form.getRdAnimal().equals("")){
			strAnimal = "なし";
		}else{
			strAnimal = pra5Form.getRdAnimal();
		}
		request.setAttribute("animal", strAnimal);

		String strHomeTown = "";
		if("1".equals(pra5Form.getCmboHomeTown())){
		strHomeTown = "福岡良いよね！";
		}else{
		strHomeTown = "福岡じゃないんだ！";
		}
		request.setAttribute("homeTown", strHomeTown);

		int sundaMachi = pra5Form.getCmboTown().length;
		String strTown = "";
		switch(sundaMachi){
			case 1:
				strTown = "地元産まれの地元育ち！";
				break;
			case 2:
				strTown = "大学進学を期に！";
				break;
			case 3:
			case 4:
				strTown = "親が転勤族なもんで！";
		}
		request.setAttribute("town", strTown);

		return mapping.findForward("p5");
	}

}
