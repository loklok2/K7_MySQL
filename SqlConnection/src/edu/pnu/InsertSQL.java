package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



///UpdateUser.java 참고하여 작성 다시 해보기 
public class InsertSQL {
    public String driver = "com.mysql.cj.jdbc.Driver";
    public String url = "jdbc:mysql://localhost:3306/musthave";
    public String username = "scott";
    public String password = "tiger";

    public class UserModel {
        private int id;
        private String pass;
        private String name;

        public UserModel(int id, String pass, String name) {
            this.id = id;
            this.pass = pass;
            this.name = name;
        }

        public int getId() {
            return id;
        }

        public String getPass() {
            return pass;
        }

        public String getName() {
            return name;
        }

        public void setId(int id) {
            this.id = id;
        }

        public void setPass(String pass) {
            this.pass = pass;
        }

        public void setName(String name) {
            this.name = name;
        }
    }

    public static void main(String args[]) {
        InsertSQL insertSQL = new InsertSQL();
        for (int i = 1; i <= 10; i++) {
            UserModel user = insertSQL.new UserModel(i, "pass" + i, "User" + i);
            insertSQL.insertUser(user);
        }
    }

    private UserModel UserModel(int id, String pass, String name) {
        return new UserModel(id, pass, name);
    }

    public void insertUser(UserModel usr) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            Class.forName(driver);
            con = getConnection();
            String sql = "insert into member(id, pass, name) values(?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, usr.getId());
            ps.setString(2, usr.getPass());
            ps.setString(3, usr.getName());
            ps.executeUpdate();
            System.out.println("추가 성공" + usr.getName());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }
}

