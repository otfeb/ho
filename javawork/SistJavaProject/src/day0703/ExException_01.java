package day0703;

public class ExException_01 {

	public static void main(String[] args) {

		System.out.println("프로그램 시작!!!");
		
		try {
			
			int num =3/0;	// 정수를 0으로 나누면 에러발생
		}
		catch (ArithmeticException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("프로그램종료!!!");
			
	}

}
