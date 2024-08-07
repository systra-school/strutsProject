package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class BodyActionForm extends ActionForm {

	private String name;		// 名前
	private String yomi;		// ヨミ
	private String height;		// 身長
	private String weight;		// 体重
	private String jibyo;		// 持病
	private String jibyoArea;	// 
	private String job;
	private String[] factor;
	/* コンストラクタ */
	public BodyActionForm() {}

	// getter
	public String getName() { return name; }
	public String getYomi() { return yomi; }
	public String getHeight() { return height; }
	public String getWeight() { return weight; }
	public String getJibyo() { return jibyo; }
	public String getJibyoArea() { return jibyoArea; }
	public String getJob() { return job; }
	public String[] getFactor() {return factor; }
	// setter
	public void setName(String name) { this.name = name; }
	public void setYomi(String yomi) { this.yomi = yomi; }
	public void setHeight(String height) { this.height = height; }
	public void setWeight(String weight) { this.weight = weight; }
	public void setJibyo(String jibyo) { this.jibyo = jibyo; }
	public void setJibyoArea(String jibyoArea) { this.jibyoArea = jibyoArea; }
	public void setJob(String job) { this.job = job; }
	public void setFactor(String[] factor) {this.factor = factor; }

	// リセット処理
	@Override
	public void reset(ActionMapping mapping,
			HttpServletRequest request){
			this.setName("");
			this.setYomi("");
			this.setHeight("");
			this.setJibyo("");
			this.setJibyoArea("");
			this.setJob("");
			this.setFactor(new String[0]);
	}




}
