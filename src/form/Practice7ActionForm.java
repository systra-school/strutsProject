package form;

import org.apache.struts.action.ActionForm;

public class Practice7ActionForm extends ActionForm{

	// 追加用選択肢
	private String empSelect;
	// 削除用選択肢
	private String addSelect;
	// 追加/削除
	private String mode;

	/* コンストラクタ */
	public Practice7ActionForm() { }

	//getter
	public String getEmpSelect() { return empSelect; }
	public String getAddSelect() { return addSelect; }
	public String getMode() { return mode; }
	//setter
	public void setEmpSelect(String empSelect) { this.empSelect = empSelect; }
	public void setAddSelect(String addSelect) { this.addSelect = addSelect; }
	public void setMode(String mode) { this.mode = mode; }
}
