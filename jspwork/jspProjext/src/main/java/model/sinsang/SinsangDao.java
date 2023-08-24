package model.sinsang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import oracle.db.DBConnect;

public class SinsangDao {
	DBConnect db=new DBConnect();
	
	//insert
	//db서버에 전체를 넘겨야함(전송)
	public void insertSinsang(SinsangDto dto) {
		Connection conn=null;
		
		//나중에 바인딩해주는게 안정성을 더 높혀줌
		PreparedStatement pstmt=null;
		
		String sql="insert into sinsang values(seq_1.nextval,?,?,sysdate)";
		
		conn=db.getConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			
			// 값 담아주고 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			//실행
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//select
	//전송해서 sql table에 입력된 값을 list.jsp에 출력해야함
	//가변적이고 많은 데이터를 출력해야하기 때문에 컬렉션(vector,list)으로 해야함
	public Vector<SinsangDto> getAllDates(){
		
		//list<> **=new list<>(); 안됨
		Vector<SinsangDto> list=new Vector<SinsangDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sinsang order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			//여러데이터 얻을경우
			while(rs.next()) {
				//dto 선언..반드시 while문 안에서
				SinsangDto dto=new SinsangDto();
				
				// getString("컬럼명") - db에 있는 컬럼명
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
				
				// set한 값들 벡터에 추가
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
	
	//삭제(delete)
	//sequence(num)만 필요하기 때문에 굳이 dto가 필요없음 / 효율적으로 하기 위해서 num만 넣음
	public void deleteSinsang(String num) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		// 여기 있는 num은 deleteSinsang의 파라메터로 넘어온것
		String sql="delete from sinsang where num=?";
		
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
	
	//하나의 데이터 조회
	public SinsangDto getData(String num) {
		SinsangDto dto=new SinsangDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sinsang where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();
			
			//하나의 데이터 조회시 if
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setSdate(rs.getTimestamp("sdate"));
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
	
	public void updateSinsang(SinsangDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update sinsang set name=?,addr=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//? 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setString(3, dto.getNum());
			
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.dbClose(pstmt, conn);
		}
	}
	
}
