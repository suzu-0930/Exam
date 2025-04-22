package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Test;

public class TestDAO extends DAO{
	public List<Test> search(Test tes) throws Exception{
		//search文を利用してデータを検索
		List<Test> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from test ");
//		st.setInt(1, stu.getYear());
//		st.setString(2,stu.getClass_num());
//		st.setBoolean(3, stu.getAttend());
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Test t=new Test();
			t.setStudent_no(rs.getString("student_no"));
			t.setSubject_cd(rs.getString("subject_cd"));
			t.setSchool_cd(rs.getString("school_cd"));
			t.setNo(rs.getInt("no"));
			t.setPoint(rs.getInt("point"));
			t.setClass_num(rs.getString("class_num"));
			list.add(t);
		}
		st.close();
		con.close();

		return list;
	}
	public List<Test> all(String keyword) throws Exception{
		//search文を利用してデータを検索
		List<Test> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from test");
//		st.setString(1, "%"+keyword+"%");
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Test t=new Test();
			t.setStudent_no(rs.getString("student_no"));
			t.setSubject_cd(rs.getString("subject_cd"));
			t.setSchool_cd(rs.getString("school_cd"));
			t.setNo(rs.getInt("no"));
			t.setPoint(rs.getInt("point"));
			t.setClass_num(rs.getString("class_num"));
			list.add(t);
		}
		st.close();
		con.close();

		return list;
	}

	public List<Test> selecter(String keyword) throws Exception{
		//search文を利用してデータを検索
		List<Test> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select distinct ent_year from test");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Test t=new Test();
//			t.set(rs.get(""));

			list.add(t);
		}

		return list;
	}

	public int insert(Test test) throws Exception{
		Connection con = getConnection();

		//insert文を利用してデータを挿入
		PreparedStatement st=con.prepareStatement(
			"insert into test values(?,?,?,?,?,?)");
		st.setString(1,test.getStudent_no());
		st.setString(2,test.getSubject_cd());
		st.setString(3, test.getSchool_cd());
		st.setInt(4, test.getNo());
		st.setInt(5,test.getPoint());
		st.setString(6,test.getClass_num());
		int line=st.executeUpdate();
		st.close();
		con.close();
		return line;
	}

	public int delete(int id) throws Exception{
	    Connection con = getConnection();

	    // DELETE SQL文を使用して、指定されたidのレコードを削除
	    PreparedStatement st = con.prepareStatement("delete from test where  = ?");
//	    st.setInt(1, id);
	    int line = st.executeUpdate();

	    st.close();
	    con.close();

	    return line;
	}
	public int update(Test test)throws Exception{
		Connection con = getConnection();

		//UPDATE SQL文を使用して、指定したレコードを更新
		PreparedStatement st=con.prepareStatement(
			"update test set ");
		st.setString(1, test.getStudent_no());
		st.setString(2, test.getSubject_cd());
		st.setString(3, test.getSchool_cd());
		st.setInt(4, test.getNo());
		st.setInt(5, test.getPoint());
		st.setString(6, test.getClass_num());
		int line=st.executeUpdate();
		st.close();
		con.close();
		return line;

	}

}