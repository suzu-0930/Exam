package main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDAO;
import tool.Action;

public class UpdateAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
			)throws Exception{

//		try{
			StudentDAO dao=new StudentDAO();
			Student p=new Student();
			//更新するデータを受け取る
			int year=Integer.parseInt(request.getParameter("year"));
			String no=request.getParameter("no");
			String name=request.getParameter("name");
			String class_num=request.getParameter("class_num");

//			boolean attend=Boolean.getBoolean(request.getParameter("attend"));
			String attend=request.getParameter("attend");

			boolean attend_ch=false;

			if (attend != null){
				attend_ch=true;
			}
			System.out.print(attend_ch);

//			if (Objects.isNull(year)||Objects.isNull(no)||Objects.isNull(name)||Objects.isNull(class_num)){
//				return "update-error.jsp";
//			}
			//更新するデータを送る
			p.setNo(no);
			p.setName(name);
			p.setYear(year);
			p.setClass_num(class_num);
			p.setAttend(attend_ch);
			System.out.print(attend);
			dao.update(p);
//		}catch(Exception e){
//			return "update-error.jsp";
//		}

		return "update-end.jsp";
	}
}