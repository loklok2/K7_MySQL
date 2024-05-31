package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QueryTest {
	static String driver = "com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/world";
	static String username = "scott";
	static String password = "tiger";
	
	static void city() {
		try (Connection con = DriverManager.getConnection(url, username, password);
	             Statement st = con.createStatement();
	             ResultSet rs = st.executeQuery("select id, name, countrycode, district, population from city limit 10")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("id") + ",");
	                System.out.print(rs.getString("name") + ",");
	                System.out.print(rs.getString("countrycode") + ",");
	                System.out.print(rs.getString("district") + ",");
	                System.out.print(rs.getString("population") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	    }
	static void country() {
		try (Connection con = DriverManager.getConnection(url, username, password);
	             Statement st = con.createStatement();
	             ResultSet rs = st.executeQuery("select code, name, continent, region, indepyear from country limit 10")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("code") + ",");
	                System.out.print(rs.getString("name") + ",");
	                System.out.print(rs.getString("continent") + ",");
	                System.out.print(rs.getString("region") + ",");
	                System.out.print(rs.getString("indepyear") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	    }
	static void countrylanguage() {
		try (Connection con = DriverManager.getConnection(url, username, password);
	             Statement st = con.createStatement();
	             ResultSet rs = st.executeQuery("select countrycode, language, isofficial, percentage from countrylanguage limit 10")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("countrycode") + ",");
	                System.out.print(rs.getString("language") + ",");
	                System.out.print(rs.getString("isofficial") + ",");
	                System.out.print(rs.getString("percentage") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	    }
	
	public static void main(String[] args) {
		System.out.println("city");
		city();
		System.out.println("country");
		country();
		System.out.println("countrylanguage");
		countrylanguage();
		
	}

}
