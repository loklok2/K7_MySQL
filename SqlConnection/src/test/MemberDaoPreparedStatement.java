package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDaoPreparedStatement {//PreparedStatement로 구현
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
		System.out.println("Insert Data");
		System.out.println("pass:");
		String pass = sc.next();
		System.out.println("name:");
		String name = sc.next();
		String sql = "Insert into member(pass,name) value(?,?)";
		try(PreparedStatement psmt = con.prepareStatement(sql)){
			psmt.setString(1, pass);
			psmt.setString(2, name);
			int Insert = psmt.executeUpdate();
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
		String sql = "Update member set pass=?,name=? where id =?";
		try(PreparedStatement psmt = con.prepareStatement(sql)){
			psmt.setString(1, pass);
			psmt.setString(2, name);
			psmt.setInt(3, id);
			int Update = psmt.executeUpdate();
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
		String sql = "delete from member where id =?";
		try(PreparedStatement psmt = con.prepareStatement(sql)){
			psmt.setInt(1, id);
			int Delete = psmt.executeUpdate();;
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
		String sql = "select * from member";
		try(PreparedStatement psmt = con.prepareStatement(sql)){
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				System.out.println("ID:" + id +",pass:" + pass +",name" + name);
			}
			
		}catch(Exception e) {
			System.out.println("연결 실패 :" + e.getMessage());
		}
		return;
	}

	
	
}

