package day0623;

public class Random_01 {

	public static void main(String[] args) {

//		System.out.println("기본 난수 5개발생");
//
//		for(int i=1; i<=5; i++) {
//			
//			double a = Math.random();
//			
//			System.out.println(a);
//		}
		
//		System.out.println("0~9사이의 난수 5개발생");
//		
//		for(int i=1; i<=5; i++) {
//			
//			int a = (int)(Math.random()*100);
//			System.out.println(a);
//		}
		
//		System.out.println("1~10사이의 난수 5개발생");
//		
//		for(int i=1; i<=5; i++) {
//			
//			int a = (int)(Math.random()*10+1);
//			System.out.println(a);
//		}
		
		System.out.println("1~100사이의 난수 5개발생");
		
		for(int i=1; i<=5; i++) {
			
			int a = (int)(Math.random()*100);
			System.out.println(a);
		}

	}
}
