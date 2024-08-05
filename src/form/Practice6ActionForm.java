package form;

import org.apache.struts.action.ActionForm;

public class Practice6ActionForm extends ActionForm{

	private String name;
	private String kana;
	private String gender;

	/* コンストラクタ */
	public Practice6ActionForm() { }
	public Practice6ActionForm(String name, String kana, String gender) {
		this.name = name;
		this.kana = kana;
		this.gender = gender;
	}

	//getter
	public String getName() { return name; }
	public String getKana() { return kana; }
	public String getGender() { return gender; }
	//setter
	public void setName(String name) { this.name = name; }
	public void setKana(String kana) { this.kana = kana; }
	public void setGender(String gender) { this.gender = gender; }
}
