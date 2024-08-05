package form;

import org.apache.struts.action.ActionForm;

public class Practice3ActionForm extends ActionForm {
	private String text1;
	private String text2;
	private String text3;
	/* コンストラクタ */
	public Practice3ActionForm() {}

	// getter
	public String getText1() { return text1; }
	public String getText2() { return text2; }
	public String getText3() { return text3; }
	// setter
	public void setText1(String text1) { this.text1 = text1; }
	public void setText2(String text2) { this.text2 = text2; }
	public void setText3(String text3) { this.text3 = text3; }
}
