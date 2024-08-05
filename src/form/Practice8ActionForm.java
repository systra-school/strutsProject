package form;

import org.apache.struts.action.ActionForm;
public class Practice8ActionForm extends ActionForm{
	private String name;
	private int age;

	/* コンストラクタ */
	public Practice8ActionForm() {
	}

	//getter
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}

	// setter
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
