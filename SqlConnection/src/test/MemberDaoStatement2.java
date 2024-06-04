package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDaoStatement2 {//PreparedStatement로 구현
	private static Scanner sc = new Scanner(System.in);
	private static String url = "jdbc:mysql://localhost:3306/musthave";
	private static String user = "scott";
	private static String pass = "tiger";
	
	
	public static void main(String args[]) throws Exception{
		Connection con = DriverManager.getConnection(url, user, pass);
		boolean flag = true;
		while(flag) {
			System.out.print("[I]nsert/[U]pdate/[D]elete/[S]elect/e[X]it:");
			String s = sc.next().toUpperCase();
			switch(s) {
			case "I" : insertMember(con);		break;
			case "U" : updateMember(con);		break;
			case "D" : deleteMember(con);		break;
			case "S" : selectMember(con);		break;
			case "X" : flag = false;			break;
			}
		}
		System.out.println("Bye~");
	}


	private static void insertMember(Connection con) throws SQLException {
		System.out.println("insert Data");
		System.out.println("pass");
		String pass = sc.next();
		System.out.println("name");
		String name = sc.next();
		String sql = "insert into member(pass, name) values ('%s' +'%s')";
		try(Statement stmt = con.createStatement()){
			int Insert = stmt.executeUpdate(sql);
			if( Insert > 0) {
				System.out.println("Insert Success!");
			}else {
				System.out.println("Insert failed!");
			}
		}
		return;
		
	}


	private static void updateMember(Connection con) throws SQLException {
		System.out.println("Update Data");
		System.out.println("id:");
		int id = sc.nextInt();
		System.out.println("pass:");
		String pass = sc.next();
		System.out.println("name:");
		String name = sc.next();
		String sql = "Update member set pass=%s,name=%s where id =%d";
		try(Statement stmt = con.createStatement()){
			int Update = stmt.executeUpdate(sql);
			if (Update > 0) {
				System.out.println("Update Success!");
			}else {
				System.out.println("Insert failed!");
			}
		}
		return;
	}


	private static void deleteMember(Connection con) throws SQLException {
		System.out.println("Delete Data");
		System.out.println("id:");
		int id = sc.nextInt();
		String sql = "delete from member where id = " + id;
		try(Statement stmt = con.createStatement()){
			int Delete = stmt.executeUpdate(sql);;
			if(Delete > 0) {
				System.out.println("Delete Success!");
			}else {
				System.out.println("Delete failed!");
			}
		}
		return;
	}


	private static void selectMember(Connection con) throws SQLException {
		System.out.println("Select Data");
	    System.out.println("id:");
	    int id = sc.nextInt();
	    String sql = "select * from member where id = " + id;
	    try (Statement stmt = con.createStatement()) {
	        ResultSet rs = stmt.executeQuery(sql);
	        while (rs.next()) {
	            String pass = rs.getString("pass");
	            String name = rs.getString("name");
	            System.out.println("id: " + id + ", pass: " + pass + ", name: " + name);
	        }
	    }
	    return;
	}




	
	
	
}

