package day0710;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QuizConnectNewBoard {
	
	static final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public void connectBoard() {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql = "select * from snsboard";
		
		try {
			conn=DriverManager.getConnection(URL,"angel","a1234");
			System.out.println("오라클 서버 연결 성공");
			
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			System.out.println("**sns board**");
			
			while(rs.next()) {
				int num=rs.getInt("b_num");
				String nick=rs.getString("nick");
				String subject=rs.getString("subject");
				String content=rs.getString("content");
				String wday=rs.getString("wday");
				
				System.out.println(num+"\t"+nick+"\t"+subject+"\t"+content+"\t"+wday);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클 서버 연결 실패!!"+e.getMessage());
		}
		finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	public static void main(String[] args) {
		
		QuizConnectNewBoard qc = new QuizConnectNewBoard();
		qc.connectBoard();

	}

}
