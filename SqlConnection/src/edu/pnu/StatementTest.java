//1. 수도 이름과 함께 국가 이름을 검색합니다. (WHERE C.CAPITAL = CI.ID)
//
//2. 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다. (ORDER BY POPULATION DESC)
//
//3. 미국(United States)에 있는 모든 도시의 이름을 검색합니다.
//
//4. 중국(China)에서 사용되는 모든 언어의 이름을 검색합니다.
//
//5. 인구가 100만 명 이상인 유럽 국가의 이름을 검색합니다.
//
//6. 1900년 이후 독립한 국가의 이름을 검색합니다.
//
//7. 영어가 공용어가 아니고 국민총생산(GNP)이 1,000보다 큰 국가의 이름을 검색합니다.




package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StatementTest {
	static String driver = "com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/world";
	static String username = "scott";
	static String password = "tiger";
	
	static void city() {
		try (Connection con = DriverManager.getConnection(url, username, password);
	             Statement st = con.createStatement();
	             ResultSet rs = st.executeQuery("select id, name, countrycode, district, population from city where countrycode='KOR' order by population asc")) {
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
//	static void country() {
//		try (Connection con = DriverManager.getConnection(url, username, password);
//	             Statement st = con.createStatement();
//	             ResultSet rs = st.executeQuery("select code, name, continent, region, indepyear from country limit 10")) {
//	            while (rs.next()) {
//	                System.out.print(rs.getString("code") + ",");
//	                System.out.print(rs.getString("name") + ",");
//	                System.out.print(rs.getString("continent") + ",");
//	                System.out.print(rs.getString("region") + ",");
//	                System.out.print(rs.getString("indepyear") + "\n");
//	            }
//	        } catch (SQLException e) {
//	            System.out.println("연결실패: " + e.getMessage());
//	        }
//	    }
//	static void countrylanguage() {
//		try (Connection con = DriverManager.getConnection(url, username, password);
//	             Statement st = con.createStatement();
//	             ResultSet rs = st.executeQuery("select countrycode, language, isofficial, percentage from countrylanguage limit 10")) {
//	            while (rs.next()) {
//	                System.out.print(rs.getString("countrycode") + ",");
//	                System.out.print(rs.getString("language") + ",");
//	                System.out.print(rs.getString("isofficial") + ",");
//	                System.out.print(rs.getString("percentage") + "\n");
//	            }
//	        } catch (SQLException e) {
//	            System.out.println("연결실패: " + e.getMessage());
//	        }
//	    }
	
	public static void main(String[] args) {
		System.out.println("city");
		city();
//		System.out.println("country");
//		country();
//		System.out.println("countrylanguage");
//		countrylanguage();
		
	}

}
