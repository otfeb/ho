package day0627;

public class Ex2Main_02 {

	public static void main(String[] args) {

		System.out.println(Ex2Object_02.width);
		System.out.println(Ex2Object_02.height);
		
		// 클래스변수
		Ex2Object_02.width=10;
		Ex2Object_02.height=20;
		
		System.out.println(Ex2Object_02.width);
		System.out.println(Ex2Object_02.height);
		
		// 인스턴스 생성후 변수 호출가능
		Ex2Object_02 card1 = new Ex2Object_02();
		
		System.out.println(card1.kind);
		System.out.println(card1.number);
		
		card1.kind = "스페이드";
		card1.number = 7;
		
		System.out.println(card1.kind);
		System.out.println(card1.number);
		
		// 인스턴스 변수 생성후 변경후 출력
		Ex2Object_02 instance = new Ex2Object_02();
		instance.kind = "클로버";
		instance.number = 10;
		
		System.out.println(instance.kind);
		System.out.println(instance.number);

	}

}
