package dao;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO{
	static DataSource ds;
	//データベースに接続する
	public Connection getConnection() throws Exception{
		if(ds==null){
			InitialContext ic = new InitialContext();
			ds=(DataSource)ic.lookup("java:/comp/env/jdbc/exam");
		}
		return ds.getConnection();
	}
}