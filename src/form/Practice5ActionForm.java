package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class Practice5ActionForm extends ActionForm {
	private boolean cbLang1;
	private boolean cbLang2;
	private boolean cbLang3;
	private String rdSex;
	private String rdAnimal;
	private String cmboHomeTown;
	private String[] cmboTown;
	/* コンストラクタ */
	public Practice5ActionForm() {}

	// getter
	public boolean isCbLang1() { return cbLang1; }
	public boolean isCbLang2() { return cbLang2; }
	public boolean isCbLang3() { return cbLang3; }
	public String getRdSex() { return rdSex; }
	public String getRdAnimal() { return rdAnimal; }
	public String getCmboHomeTown() {return cmboHomeTown; }
	public String[] getCmboTown() {return cmboTown; }
	// setter
	public void setCbLang1(boolean cbLang1) { this.cbLang1 = cbLang1; }
	public void setCbLang2(boolean cbLang2) { this.cbLang2 = cbLang2; }
	public void setCbLang3(boolean cbLang3) { this.cbLang3 = cbLang3; }
	public void setRdSex(String rdSex) { this.rdSex = rdSex; }
	public void setRdAnimal(String rdAnimal) { this.rdAnimal = rdAnimal; }
	public void setCmboHomeTown(String cmboHomeTown) {this.cmboHomeTown = cmboHomeTown; }
	public void setCmboTown(String[] cmboTown) {this.cmboTown = cmboTown; }

	// リセット処理
	@Override
	public void reset(ActionMapping mapping,
			HttpServletRequest request){
			this.setCbLang1(false);
			this.setCbLang2(false);
			this.setCbLang3(false);
			this.setRdSex("1");
			this.setRdAnimal("3");
			this.setCmboHomeTown("");
			this.setCmboTown(new String[0]);
	}




}
