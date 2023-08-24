package day0627;

public class QuizMain_09 {

	public static void main(String[] args) {

		System.out.println("[쇼핑 목록]\n");
		
		Quiz_09 q1 = new Quiz_09();
		Quiz_09 q2 = new Quiz_09();
		Quiz_09 q3 = new Quiz_09();
		
		q1.setName("손선풍기");
		q1.setPrice(25000);
		
		q2.setName("핸드폰충전기");
		q2.setPrice(30000);
		
		q3.setName("이어폰");
		q3.setPrice(70000);
		
		System.out.println("쇼핑장소: "+Quiz_09.addr);
		System.out.println("상품명: "+q1.getName());
		System.out.println("가격: "+q1.getPrice()+"\n");
		
		System.out.println("쇼핑장소: "+Quiz_09.addr);
		System.out.println("상품명: "+q2.getName());
		System.out.println("가격: "+q2.getPrice()+"\n");
		
		System.out.println("쇼핑장소: "+Quiz_09.addr);
		System.out.println("상품명: "+q3.getName());
		System.out.println("가격: "+q3.getPrice()+"\n");

	}

}
