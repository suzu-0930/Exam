package bean;

public class Class_num implements java.io.Serializable{
	private String school_cd;
	private int class_num;
	//studentテーブルにセットするデータを保持する

	public String getSchool_cd(){
		return school_cd;
	}
	public int getClass_num(){
		return class_num;
	}

	public void setSchool_cd(String school_cd){
		this.school_cd=school_cd;
	}
	public void setClass_num(int class_num){
		this.class_num=class_num;
	}
}