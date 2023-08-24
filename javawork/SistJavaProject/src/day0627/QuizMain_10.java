package day0627;

public class QuizMain_10 {

	public static void main(String[] args) {

		Quiz_10 q1 = new Quiz_10();
		Quiz_10 q2 = new Quiz_10();
		Quiz_10 q3 = new Quiz_10();
		
		q1.setSangpum("딸기");
		q1.dan = 10000;
		q1.su = 5;
		
		q2.setSangpum("초코파이");
		q2.dan = 5000;
		q2.su = 10;
		
		q3.setSangpum("요거트");
		q3.dan = 2500;
		q3.su = 100;
		
		System.out.println("**상품입고**");
		System.out.println("--------------------");
		System.out.println("입고된 상점: "+Quiz_10.SHOPNAME);
		System.out.println("--------------------");
		System.out.println("상품명: "+q1.getSangpum());
		System.out.println("가격: "+q1.dan+"원");
		System.out.println("수량: "+q1.su+"팩");
		System.out.println("--------------------");
		System.out.println("상품명: "+q2.getSangpum());
		System.out.println("가격: "+q2.dan+"원");
		System.out.println("수량: "+q2.su+"상자");
		System.out.println("--------------------");
		System.out.println("상품명: "+q3.getSangpum());
		System.out.println("가격: "+q3.dan+"원");
		System.out.println("수량: "+q3.su+"팩");
		

	}

}
