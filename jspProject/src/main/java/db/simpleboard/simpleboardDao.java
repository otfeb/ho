package db.simpleboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mysql.db.DBConnect;

public class simpleboardDao {

	DBConnect db=new DBConnect();
	
	//전체조회
	public List<simpleboardDto> getAllBoards(){
		List<simpleboardDto> list=new ArrayList<simpleboardDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from simpleboard order by num desc";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				simpleboardDto dto=new simpleboardDto();
				
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setPass(rs.getString("pass"));
				dto.setSubject(rs.getString("subject"));
				dto.setStory(rs.getString("story"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	//num에 해당하는 dto반환
	public simpleboardDto getBoard(String num) {
		simpleboardDto dto=new simpleboardDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from simpleboard where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setPass(rs.getString("pass"));
				dto.setSubject(rs.getString("subject"));
				dto.setStory(rs.getString("story"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return dto;
	}
	
	//가장최신에 추가한 글의 num값 얻기
	public int getmaxNum() {
		int max=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select max(num) from simpleboard";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				max=rs.getInt("max(num)");	//	1.max(num) 2.알리야스(변수?) max주고 max 3.rs.getInt(1);  1열
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return max;
	}
	
	//insert
	public void insertBoard(simpleboardDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into simpleboard values (null,?,?,?,?,0,now())";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getStory());
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//조회수 1증가
	public void updateReadCount(String num) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update simpleboard set readcount=readcount+1 where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//비밀번호 맞는지 체크
	public boolean getCheckPass(String num,String pass) {
		boolean check=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from simpleboard where num=? and pass=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.setString(2, pass);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				//초기값이 false이므로 else는 굳이 안줘도됨
				if(rs.getInt(1)==1)	//비번이 틀릴경우 0
					check=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return check;
	}
	
	//수정..writer,subject,story 다되게 할것
	public void updateBoard(simpleboardDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update simpleboard set writer=?,subject=?,story=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getStory());
			pstmt.setString(4, dto.getNum());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//삭제
	public void deleteBoard(String num) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from simpleboard where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//페이징처리_1.전체개수반환
	public int getTotalCount() {
		int total=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from simpleboard";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				total=rs.getInt(1);		//1번열
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return total;
	}
	
	//부분조회
	public List<simpleboardDto> getPagingList(int startNum,int perPage){
		List<simpleboardDto> list=new ArrayList<simpleboardDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from simpleboard order by num desc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, perPage);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				simpleboardDto dto=new simpleboardDto();
				
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setPass(rs.getString("pass"));
				dto.setSubject(rs.getString("subject"));
				dto.setStory(rs.getString("story"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
}
