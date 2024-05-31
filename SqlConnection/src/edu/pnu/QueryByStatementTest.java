package edu.pnu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class QueryByStatementTest {
	static String driver = "com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/world";
	static String username = "scott";
	static String password = "tiger";
	
	public static void main(String args[]) {
		try(Scanner sc = new Scanner(System.in)) {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select id, name, countrycode, district, population from city limit 10");
			while(true) {
				System.out.println("=".repeat(80));
				System.out.println(">>Select[0:Exit]");
				System.out.println("1. 수도 이름과 함께 국가 이름을 검색합니다. (WHERE C.CAPITAL = CI.ID)");
				System.out.println("2. 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다. (ORDER BY POPULATION DESC)");
				System.out.println("3. 미국(United States)에 있는 모든 도시의 이름을 검색합니다.");
				System.out.println("4. 중국(China)에서 사용되는 모든 언어의 이름을 검색합니다.");
				System.out.println("6. 1900년 이후 독립한 국가의 이름을 검색합니다.");
				System.out.println("7. 영어가 공용어가 아니고 국민총생산(GNP)이 1,000보다 큰 국가의 이름을 검색합니다.");
				int sel= sc.nextInt();
				System.out.println("=".repeat(80));
				if(sel == 0) break;
				switch(sel) {
				case 1: query1(con); break;
				case 2: query2(con); break;
				case 3: query3(con); break;
				case 4: query4(con); break;
				case 5: query5(con); break;
				case 6: query6(con); break;
				case 7: query7(con); break;
				default: 		break;
				
				}
			}
			
			
		}catch(Exception e) {
			System.out.println("연결 실패 :" + e.getMessage());
		}
	}


	static void query1(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select name, countrycode from city")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("name") + ",");
	                System.out.print(rs.getString("countrycode") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
		
	 }
	
	static void query2(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select name, population from city order by population desc limit 5")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("name") + ",");
	                System.out.print(rs.getString("population") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }

	
	static void query3(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select countrycode, name from city where countrycode ='usa'")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("countrycode") + ",");
	                System.out.print(rs.getString("name") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }
	
	static void query4(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select countrycode, language from countrylanguage where countrycode ='CHN'")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("countrycode") + ",");
	                System.out.print(rs.getString("language") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }
	
	
	static void query5(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select code, name from country where continent ='europe' and population >= 100000 ")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("code") + ",");
	                System.out.print(rs.getString("name") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }
	
	static void query6(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select code, name from country where indepyear>1900 ")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("code") + ",");
	                System.out.print(rs.getString("name") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }
	
	static void query7(Connection con) {
		try (Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select language, isofficial from countrylanguage where language = 'english' and isofficial = 'f'")) {
	            while (rs.next()) {
	                System.out.print(rs.getString("language") + ",");
	                System.out.print(rs.getString("isofficial") + "\n");
	            }
	        } catch (SQLException e) {
	            System.out.println("연결실패: " + e.getMessage());
	        }
	 }






}







// static void printResult(ResultSet rs) thows SQLExeption{
//ResultSetMeta meta - rs.getMetaData;
//int count = meta.getcolumcount();
//while(rs.next()){
//for (int i = 0 , i <= count; i++){
//sout(rs.getString(i) + (i==count)?""+",");
//sout()
//rs.close


// public static void query1(Statement st) throws SQLExeption{
// string sql = ""select language, isofficial 
//                + from countrylanguage 
//                + where language = 'english' and isofficial = 'f'"
// printResultSet(st.executeQuery(sql);

//public static void query2(Statement st) throws SQLExeption{
// printResultSet(st.executeQuery("select language, isofficial from countrylanguage where language = 'english' and isofficial = 'f'"))



