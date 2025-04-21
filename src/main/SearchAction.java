package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Class_num;
import bean.Student;
import dao.Class_numDAO;
import dao.StudentDAO;
import tool.Action;

public class SearchAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
			)throws Exception{

		Student stu=new Student();
		StudentDAO dao=new StudentDAO();

		Class_numDAO cdao=new Class_numDAO();
		String keyword=("");

		List<Student> list2=dao.selecter(keyword);
		List<Class_num> list3=cdao.all(keyword);

		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);

		try{
			int year=Integer.parseInt(request.getParameter("year"));
			String class_num=request.getParameter("class_num");
			boolean stay=Boolean.parseBoolean(request.getParameter("attend"));
			stu.setYear(year);
			stu.setClass_num(class_num);
			stu.setAttend(stay);
			System.out.print(stay);
			List<Student> list1=dao.search(stu);
			if(list1.size()==0){
				return "list-error.jsp";
			}else{
				request.setAttribute("list1", list1);
				return "list.jsp";
			}
		}catch(NumberFormatException e){

			List<Student> list1=dao.all(keyword);
			if(list1.size()==0){
				return "list-error.jsp";
			}else{
				request.setAttribute("list1", list1);
				return "list.jsp";
			}
			}


	}
}