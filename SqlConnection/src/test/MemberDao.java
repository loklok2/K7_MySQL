package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;


public abstract class MemberDao {

	static String url = "jdbc:mysql://localhost:3306/musthave";
	static String user = "scott";
	static String pass = "tiger";
	
	public abstract void insertMember(Connection con) throws SQLException;
	public abstract void updateMember(Connection con) throws SQLException;
	public abstract void deleteMember(Connection con) throws SQLException;
	public abstract void selectMember(Connection con) throws SQLException;
}

class MemberDaoStatement extends MemberDao {
	private static Scanner sc = new Scanner(System.in);
	
	
	public static void main(String args[]) throws Exception{
		Connection con = DriverManager.getConnection(url, user, pass);
		MemberDaoStatement memberDaoStatement = new MemberDaoStatement();
		boolean flag = true;
		while(flag) {
			System.out.print("[I]nsert/[U]pdate/[D]elete/[S]elect/e[X]it:");
			String s = sc.next().toUpperCase();
			switch(s) {
			case "I" : memberDaoStatement.insertMember(con);		break;
			case "U" : memberDaoStatement.updateMember(con);		break;
			case "D" : memberDaoStatement.deleteMember(con);		break;
			case "S" : memberDaoStatement.selectMember(con);		break;
			case "X" : flag = false;			break;
			}
		}
		System.out.println("Bye~");
	}

	@Override
	public void insertMember(Connection con) throws SQLException {
		System.out.println("insert Data");
		System.out.println("pass:");
		String pass = sc.next();
		System.out.println("name:");
		String name = sc.next();
		String sql = "insert into member(pass, name) values ('%S' + pass + name +'%S')";
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

	@Override
	public void updateMember(Connection con) throws SQLException {
		System.out.println("Update Data");
		System.out.println("id:");
		int id = sc.nextInt();
		System.out.println("pass:");
		String pass = sc.next();
		System.out.println("name:");
		String name = sc.next();
		String sql = "update member set pass = '%" + pass + "%', name = '%" + name + "%' where id = " + id;
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

	@Override
	public void deleteMember(Connection con) throws SQLException {
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

	@Override
	public void selectMember(Connection con) throws SQLException {
		System.out.println("Select Data");
	    System.out.println("id:");
	    int id = sc.nextInt();
	    String sql = "select * from member where name = " + id;
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
