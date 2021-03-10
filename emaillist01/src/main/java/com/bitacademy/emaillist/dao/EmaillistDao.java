package com.bitacademy.emaillist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bitacademy.emaillist.vo.EmaillistVo;

public class EmaillistDao {
	public List<EmaillistVo> findAll(){
		List<EmaillistVo> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//1. JDBC 드라이버 객체 생성, 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2. 연결하기
			String url = "jdbc:mysql://localhost:3306/webdb?characterEncoding=utf8&serverTimezone=UTC";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			
			//3. sql문 준비
			String sql = "select no, first_name, last_name, email from emaillist";
			pstmt = conn.prepareStatement(sql); 
			
			//4. 실행
			rs = pstmt.executeQuery();
			
			//5. 실행한 쿼리문에 대한 결과 데이터 가져오기
			while(rs.next()) {
				Long no = rs.getLong(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				
				EmaillistVo vo = new EmaillistVo();
				vo.setNo(no);
				vo.setFirstName(firstName);
				vo.setLastName(lastName);
				vo.setEmail(email);
				
				list.add(vo);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			//1. 사과
			//2. log
			System.out.println("error: " + e);
		} finally {
			try {
				//자원 정리
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}
}
