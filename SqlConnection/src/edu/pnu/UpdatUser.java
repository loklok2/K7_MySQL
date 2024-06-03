package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class UpdatUser {
    //업데이트 메소드
    private static int updateUser(Connection con, Scanner sc) throws SQLException {
        System.out.println("Update Data");
        System.out.println("id:");
        int id = sc.nextInt();
        System.out.println("pass:");
        String pass = sc.next();
        System.out.println("name:");
        String name = sc.next();
        try (PreparedStatement psmt = con.prepareStatement("Update member set pass=?,name=? where id =?")) {
            psmt.setString(1, pass);
            psmt.setString(2, name);
            psmt.setInt(3, id);
            return psmt.executeUpdate();
        }
    }
    
    //정보추가 메서드
    private static int insertUser(Connection con, Scanner sc) throws SQLException {
        System.out.println("Insert Data");
        System.out.println("pass:");
        String pass = sc.next();
        System.out.println("name:");
        String name = sc.next();
        try (PreparedStatement psmt = con.prepareStatement("Insert into member(pass,name) value(?,?)")) {
            psmt.setString(1, pass);
            psmt.setString(2, name);
            return psmt.executeUpdate();
        }
    }
    // 모든 사용자 정보조회 메서드
    private static int selectData(Connection con) throws SQLException {
        System.out.println("Select Data");
        try (PreparedStatement psmt = con.prepareStatement("SELECT * FROM member")) {
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String pass = rs.getString("pass");
                String name = rs.getString("name");
                System.out.println("ID: " + id + ", Pass: " + pass + ", Name: " + name);
            }
            return psmt.executeUpdate();
        }
    }
    // 사용자 정보 삭제 메서도
    private static int deleteUser(Connection con, Scanner sc) throws SQLException {
        System.out.println("Delete Data");
        System.out.println("id:");
        int id = sc.nextInt();
        try (PreparedStatement psmt = con.prepareStatement("delete from member where id =?")) {
            psmt.setInt(1, id);
            return psmt.executeUpdate();
        }
    }
    
    public static void main(String args[]) {
        Connection con = null;
        PreparedStatement psmt = null;
        try {
        	// 데이터베이스에 연결
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/musthave", "scott", "tiger");
            psmt = con.prepareStatement("update member set pass=? where id= ?");
            try (Scanner sc = new Scanner(System.in)) {
                boolean flag = true;
                while (flag) {
                    System.out.println("1, Update");
                    System.out.println("2, Insert");
                    System.out.println("3, Delete");
                    System.out.println("4, Select");
                    System.out.println("5, Exit");
                    int option = sc.nextInt();
                    switch (option) {
                        case 1: updateUser(con, sc);	break;
                        case 2: insertUser(con, sc);	break;
                        case 3: deleteUser(con, sc);	break;
                        case 4: selectData(con);		break;
                        case 5: flag = false;    		break;
                        default:
                            System.out.println("없는 옵션");	break;
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("실패:" + e.getMessage());
        } finally {
            try {
                if (psmt != null) {
                    psmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

