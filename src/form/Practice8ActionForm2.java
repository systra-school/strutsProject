package form;

import java.util.HashMap;

import org.apache.struts.action.ActionForm;

public class Practice8ActionForm2 extends ActionForm{

	private HashMap<String, String> strMap;

	/* コンストラクタ */
	public Practice8ActionForm2() {
	}

	public HashMap<String, String> getStrMap() {
		return strMap;
	}
	public void setStrMap(HashMap<String, String> strMap) {
		this.strMap = strMap;
	}
}
