package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverLoading {
    public static void main(String args[]) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        System.out.println("로딩 성공");
        //getConnection(String url, String user, String password)
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "scott", "tiger");

        System.out.println("연결 성공");
        
        con.createStatement();
    } 
}