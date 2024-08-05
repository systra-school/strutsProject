package form;

import org.apache.struts.action.ActionForm;

public class Practice4ActionForm extends ActionForm {
	private String text;
	private String pass;
	private String area;
	private String hidden;
	/* コンストラクタ */
	public Practice4ActionForm() {}

	// getter
	public String getText() { return text; }
	public String getPass() { return pass; }
	public String getArea() { return area; }
	public String getHidden() { return hidden; }
	// setter
	public void setText(String text) { this.text = text; }
	public void setPass(String pass) { this.pass = pass; }
	public void setArea(String area) { this.area = area; }
	public void setHidden(String hidden) { this.hidden = hidden; }
}
