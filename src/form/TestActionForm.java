package form;

import org.apache.struts.action.ActionForm;

public class TestActionForm extends ActionForm {
	private String text;
	private String pass;
	private String area;
	private String hidden;

	public TestActionForm() {
	}

	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}

	public String getHidden() {
		return hidden;
	}
	public void setHidden(String hidden) {
		this.hidden = hidden;
	}
}
