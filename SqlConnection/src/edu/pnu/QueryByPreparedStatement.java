package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class QueryByPreparedStatement {
	
	
	public static void main(String args[]) {
		Connection con = null;
		try {
			String driver = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/world";
			String username = "scott";
			String password = "tiger";
			
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			
//			PreparedStatement pt = con.prepareStatement("select id, name, countrycode, district, population from city where name= ? ");  //?
//			PreparedStatement pt = con.prepareStatement("select id, name, countrycode, district, population from city where name like 'S%' and population>? ");  //?
			PreparedStatement pt = con.prepareStatement("select id, name, countrycode, district, population from city where name like ? and population>? ");  //?
//			pt.setString(1, "Seoul");	
			pt.setString(1, "S%");			//?valuealble 0부터 시작이 아닌 1부터 시작   //위에서 ?에 "",''을 하지 않아도, setString을 통해서 문자열이라고 인식
			pt.setInt(2, 1000000);
			ResultSet rs = pt.executeQuery();
			
			while(rs.next()) {
				System.out.print(rs.getInt("id")+",");
				System.out.print(rs.getString("name")+",");
				System.out.print(rs.getString("countrycode")+",");
				System.out.print(rs.getString("district")+",");
				System.out.print(rs.getInt("population")+"\n");
			}
			rs.close();
			pt.close();
			con.close();
		}catch(Exception e) {
			System.out.println("연결 실패 :" + e.getMessage());
		}
	}

}
