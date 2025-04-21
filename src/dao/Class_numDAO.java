package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Class_num;

public class Class_numDAO extends DAO{
	public List<Class_num> all(String keyword) throws Exception{
		//search文を利用してデータを検索
		List<Class_num> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from class_num where school_cd like ?");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Class_num c=new Class_num();
			c.setSchool_cd(rs.getString("school_cd"));
			c.setClass_num(rs.getInt("class_num"));
			list.add(c);
		}
		st.close();
		con.close();

		return list;
	}

}