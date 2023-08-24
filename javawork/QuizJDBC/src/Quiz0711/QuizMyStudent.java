package Quiz0711;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Scanner;

public class QuizMyStudent {
	
	//connection
	DBConnect2 db=new DBConnect2();
	Scanner scanner = new Scanner(System.in);
	
	public void insertMyStudent() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("학생명은?");
		String name=scanner.nextLine();
		System.out.println("학년?");
		int grade=Integer.parseInt(scanner.nextLine());
		System.out.println("휴대폰번호?");
		String hp=scanner.nextLine();
		System.out.println("주소는?");
		String addr=scanner.nextLine();
		System.out.println("나이는?");
		int age=Integer.parseInt(scanner.nextLine());
		
		String sql="insert into mystudent values (seq_stu.nextval,?,?,?,?,?,sysdate)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, grade);
			pstmt.setString(3, hp);
			pstmt.setString(4, addr);
			pstmt.setInt(5, age);
			
			//업데이트
			int a=pstmt.executeUpdate();
			
			if(a==1) {
				System.out.println("인서트성공!!");
			}
			else {
				System.out.println("인서트실패!!!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	public void selectMyStudent() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mystudent order by stu_num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("학생명\t학년\t휴대폰번호\t주소\t나이\t현재날짜");
			
			while(rs.next()) {
				String name = rs.getString("stu_name");
				int grade=rs.getInt("stu_grade");
				String hp = rs.getString("hp");
				String addr = rs.getString("addr");
				int age=rs.getInt("age");
				Date sdate = rs.getDate("sdate");
				
				System.out.println(name+"\t"+grade+"\t"+hp+"\t"+addr+"\t"+age+"\t"+sdate);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	public void deleteMyStudent() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("삭제할 시퀀스?");
		int num=Integer.parseInt(scanner.nextLine());
		
		String sql="delete from mystudent where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			//?바인딩
			pstmt.setInt(1, num);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("**삭제성공**");
			else {
				System.out.println("**삭제실패**");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public boolean isData(String stu_num) {
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mystudent where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			//?
			pstmt.setString(1, stu_num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				b=true;
			}
			else {
				b=false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	public void updateMyStudent() {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("수정할 시퀀스 번호?");
		String num=scanner.nextLine();
		
		//여기서 시퀀스가 없다면 종료
		if(!isData(num)) {
			System.out.println("해당번호는 존재X");
			return;
		}
		
		System.out.println("수정할 학생명은?");
		String name=scanner.nextLine();
		System.out.println("수정할 학년?");
		int grade=Integer.parseInt(scanner.nextLine());
		System.out.println("수정할 휴대폰번호?");
		String hp=scanner.nextLine();
		System.out.println("수정할 주소는?");
		String addr=scanner.nextLine();
		System.out.println("수정할 나이는?");
		int age=Integer.parseInt(scanner.nextLine());
		
		String sql="update mystudent set stu_name=?,stu_grade=?,hp=?,addr=?,age=? where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//4개순서대로 바인딩
			pstmt.setString(1, name);
			pstmt.setInt(2, grade);
			pstmt.setString(3, hp);
			pstmt.setString(4, addr);
			pstmt.setInt(5, age);
			pstmt.setString(6, num);
			
			//업데이트
			pstmt.execute();
			
			System.out.println("수정성공!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	public void searchMyStudent() {
		System.out.println("검색할 학생명(일부)");
		String n=scanner.nextLine();
		
		String sql="select * from mystudent where stu_name like ?";
		System.out.println(sql);
		
		System.out.println("학생명\t학년\t휴대폰번호\t주소\t나이\t현재날짜");
		System.out.println("----------------------------------------");
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+n+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				String stu_num = rs.getString("stu_num");
				String name = rs.getString("stu_name");
				int grade=rs.getInt("stu_grade");
				String hp=rs.getString("hp");
				String addr=rs.getString("addr");
				int age=rs.getInt("age");
				Date sdate = rs.getDate("sdate");
				
				System.out.println(stu_num+"\t"+name+"\t"+grade+"\t"+hp+"\t"+addr+"\t"+age+"\t"+sdate);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
	}

	public static void main(String[] args) {
		QuizMyStudent qs=new QuizMyStudent();
		Scanner scanner = new Scanner(System.in);
		int n;
		
		while(true) {
			System.out.println("**학생정보**");
			System.out.println("1.입력\t2.출력\t3.삭제\t4.수정\t5.학생정보검색\t9.종료");
			
			n=Integer.parseInt(scanner.nextLine());
			
			if(n==1)
				qs.insertMyStudent();
			else if(n==2) {
				qs.selectMyStudent();
			}
			else if(n==3) {
				qs.deleteMyStudent();
			}
			else if(n==4) {
				qs.updateMyStudent();
			}
			else if(n==5) {
				qs.searchMyStudent();
			}
			else if(n==9) {
				System.out.println("종료");
				break;
			}
		}
		
	}

}
