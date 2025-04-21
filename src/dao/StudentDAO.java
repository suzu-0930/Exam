package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO{
	public List<Student> search(Student stu) throws Exception{
		//search文を利用してデータを検索
		List<Student> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from student where ent_year = ? and class_num = ? and is_attend = ? order by no");
		st.setInt(1, stu.getYear());
		st.setString(2,stu.getClass_num());
		st.setBoolean(3, stu.getAttend());
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Student p=new Student();
			p.setNo(rs.getString("No"));
			p.setName(rs.getString("name"));
			p.setClass_num(rs.getString("class_num"));
			p.setYear(rs.getInt("ent_year"));
			p.setAttend(rs.getBoolean("is_attend"));
			p.setSchool_cd(rs.getString("school_cd"));
			list.add(p);
		}
		st.close();
		con.close();

		return list;
	}
	public List<Student> all(String keyword) throws Exception{
		//search文を利用してデータを検索
		List<Student> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from student where name like ? order by no");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Student p=new Student();
			p.setNo(rs.getString("No"));
			p.setName(rs.getString("name"));
			p.setClass_num(rs.getString("class_num"));
			p.setYear(rs.getInt("ent_year"));
			p.setAttend(rs.getBoolean("is_attend"));
			p.setSchool_cd(rs.getString("school_cd"));
			list.add(p);
		}
		st.close();
		con.close();

		return list;
	}

	public List<Student> selecter(String keyword) throws Exception{
		//search文を利用してデータを検索
		List<Student> list=new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select distinct ent_year from student where ent_year like ?");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs = st.executeQuery();
		while (rs.next()){
			Student p1=new Student();
			p1.setYear(rs.getInt("ent_year"));

			list.add(p1);
		}

		return list;
	}

	public int insert(Student student) throws Exception{
		Connection con = getConnection();

		//insert文を利用してデータを挿入
		PreparedStatement st=con.prepareStatement(
			"insert into student values(?,?,?,?,?,?)");
		st.setString(1,student.getNo());
		st.setString(2,student.getName());
		st.setInt(3, student.getYear());
		st.setString(4, student.getClass_num());
		st.setBoolean(5,student.getAttend());
		st.setString(6,student.getSchool_cd());
		int line=st.executeUpdate();
		st.close();
		con.close();
		return line;
	}

	public int delete(int id) throws Exception{
	    Connection con = getConnection();

	    // DELETE SQL文を使用して、指定されたidのレコードを削除
	    PreparedStatement st = con.prepareStatement("delete from student where id = ?");
	    st.setInt(1, id);
	    int line = st.executeUpdate();

	    st.close();
	    con.close();

	    return line;
	}
	public int update(Student student)throws Exception{
		Connection con = getConnection();

		//UPDATE SQL文を使用して、指定したレコードを更新
		PreparedStatement st=con.prepareStatement(
			"update student set no=?, name=?, class_num=?, ent_year=?,is_attend=? where no=?");
		st.setString(1, student.getNo());
		st.setString(2, student.getName());
		st.setString(3, student.getClass_num());
		st.setInt(4, student.getYear());
		st.setBoolean(5, student.getAttend());
		st.setString(6, student.getNo());
		int line=st.executeUpdate();
		st.close();
		con.close();
		return line;

	}

}