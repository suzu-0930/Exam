package bean;

public class Student implements java.io.Serializable{
	private String no;
	private String name;
	private int year;
	private String class_num;
	private boolean attend;
	private String school_cd;
	//studentテーブルにセットするデータを保持する

	public String getNo(){
		return no;
	}
	public String getName(){
		return name;
	}

	public int getYear(){
		return year;
	}
	public String getClass_num(){
		return class_num;
	}
	public boolean getAttend(){
		return attend;
	}
	public String getSchool_cd(){
		return school_cd;
	}

	public void setNo(String no){
		this.no=no;
	}
	public void setName(String name){
		this.name=name;
	}
	public void setYear(int year){
		this.year=year;
	}
	public void setClass_num(String class_num){
		this.class_num=class_num;
	}
	public void setAttend(boolean attend){
		this.attend=attend;
	}
	public void setSchool_cd(String school_cd){
		this.school_cd=school_cd;
	}
}
