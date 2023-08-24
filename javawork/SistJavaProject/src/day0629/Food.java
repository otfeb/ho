package day0629;

// class -> class : extends
// class -> interface : implements
// interface -> interface : extends

public class Food implements FoodGage {

	@Override
	public void order() {
		System.out.println(SHOPNAME);
		//SHOPNAME = "돈까스집"; -> 상수라서 수정 불가능
		System.out.println("음식을 주문합니다");
	}

	@Override
	public void beadal() {
		System.out.println(SHOPNAME);
		System.out.println("음식을 배달합니다");
	}

}
