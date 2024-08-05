package form;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class Practice5aActionForm extends ActionForm {
	private String name;
	private String yomi;
	private String height;
	private String weight;
	private String jibyo;
	private String jibyoName;
	private String job;
	private String factor1;
	private String factor2;
	private String factor3;
	private String factor4;

	/* コンストラクタ */
	public Practice5aActionForm() {}

	// getter
	public String getName() { return name; }
	public String getYomi() { return yomi; }
	public String getHeight() {return height; }
	public String getWeight() {return weight; }
	public String getJibyo() {return jibyo; }
	public String getJibyoName() {return jibyoName; }
	public String getJob() {return job; }
	public String getFactor1() {return factor1; }
	public String getFactor2() {return factor2; }
	public String getFactor3() {return factor3; }
	public String getFactor4() {return factor4; }
	public String[] getFactor() {

		List<String> list = new ArrayList<>();
		if(this.getFactor1()!=null && !this.getFactor1().equals("")) list.add(this.getFactor1());
		if(this.getFactor2()!=null && !this.getFactor2().equals("")) list.add(this.getFactor2());
		if(this.getFactor3()!=null && !this.getFactor3().equals("")) list.add(this.getFactor3());
		if(this.getFactor4()!=null && !this.getFactor4().equals("")) list.add(this.getFactor4());
		String[] factor = list.toArray(new String[list.size()]);
		return factor;
	}
	// setter
	public void setName(String name) { this.name = name; }
	public void setYomi(String yomi) { this.yomi = yomi; }
	public void setHeight(String height) {this.height = height; }
	public void setWeight(String weight) {this.weight = weight; }
	public void setJibyo(String jibyo) { this.jibyo = jibyo; }
	public void setJibyoName(String jibyoName) { this.jibyoName = jibyoName; }
	public void setJob(String job) { this.job = job; }
	public void setFactor1(String factor1) {this.factor1 = factor1; }
	public void setFactor2(String factor2) {this.factor2 = factor2; }
	public void setFactor3(String factor3) {this.factor3 = factor3; }
	public void setFactor4(String factor4) {this.factor4 = factor4; }
	public void setFactor(String[] factor) {
		this.setFactor1(factor[0]);
		this.setFactor2(factor[1]);
		this.setFactor3(factor[2]);
		this.setFactor4(factor[3]);
	}

	// リセット処理
	@Override
	public void reset(ActionMapping mapping,
			HttpServletRequest request){
			this.setName("");
			this.setYomi("");
			this.setHeight("");
			this.setWeight("");
			this.setJibyo("false");
			this.setJibyoName("");
			this.setJob("");
			this.setFactor(new String[] {"", "", "", ""});
	}




}
