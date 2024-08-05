package form;

import org.apache.struts.action.ActionForm;

public class LoginActionForm extends ActionForm {
	private String account;
	private String pass;
	/* コンストラクタ */
	public LoginActionForm() {}

	// getter
	public String getAccount() { return account; }
	public String getPass() { return pass; }
	// setter
	public void setAccount(String account) { this.account = account; }
	public void setPass(String pass) { this.pass = pass; }
}
