package main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class InsertAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception{
		try{
			//挿入するデータを受け取る
			String no=request.getParameter("no");
			Integer year=Integer.parseInt(request.getParameter("year"));
			String name=request.getParameter("name");
			String class_num=request.getParameter("class_num");
			String school_cd=request.getParameter("school_cd");
			if (name==""){
				return "insert-error.jsp";
			}else if(no==null){
				return "insert-error.jsp";
			}
			Student p= new Student();
			//挿入するデータを送る
			p.setNo(no);
			p.setName(name);
			p.setClass_num(class_num);
			p.setYear(year);
			p.setAttend(true);
			p.setSchool_cd(school_cd);
			StudentDAO dao=new StudentDAO();
			dao.insert(p);

			return "insert-ok.jsp";
		}catch(Exception e){
			//入力エラーの処理
			return "insert-error.jsp";
		}
	}
}