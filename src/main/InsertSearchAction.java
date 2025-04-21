package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Class_num;
import dao.Class_numDAO;
import tool.Action;

public class InsertSearchAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
			)throws Exception{

		Class_numDAO dao=new Class_numDAO();
		String keyword=("");

		List<Class_num> list=dao.all(keyword);
		request.setAttribute("list", list);
		return "insert.jsp";
			}

	}
