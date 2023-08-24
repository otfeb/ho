package day0703;

import java.util.Date;

public class NullPoint_02 {
	
	// NullPointerExceiption - 생성하지 않고 클래스의 메소드를 호출하는 경우
	
	Date date;
	
	public void writeday() {
		
		int y,m,d;
		
		
		try {
		y = date.getYear()-1900;
		m = date.getMinutes()+1;
		d = date.getDay();
		
		System.out.println(y+"년"+m+"월"+d+"일입니다");
		} catch(NullPointerException e) {
			System.out.println("객체생성을 안했어요"+e.getMessage());
		}
		
		
	}


	public static void main(String[] args) {

		
	}

}
