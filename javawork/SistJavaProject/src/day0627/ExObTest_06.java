package day0627;

class ObtestA{
	
	private int x;
	private static int y;
	
	// x
	public void setX(int x) {
		this.x=x;	// 이름이 다르다면 this 생략가능
	}
	
	// x
	public void getX() {
		System.out.println("x="+this.x);
	}
	
	// y
	public static void setY(int yy) {
		// static은 this 사용 불가
		// static은 일반변수 호출x ... static변수만 호출가능
		ObtestA.y=yy;	// 같은 클래스라 클래스명은 생략 가능
	}
	
	public static void getY() {
		System.out.println("y="+ObtestA.y);
	}
	
}

/////////////////////
public class ExObTest_06 {

	public static void main(String[] args) {

		// x는 생성 .. private 붙히는 순간 에러...메소드로 접근해야
		// ObtestA oa1 = new ObtestA();
		// System.out.println(oa1.x);
		
		// y는 클래스명으로 호출
		// System.out.println(ObtestA.y);
		
		ObtestA oa1 = new ObtestA();
		oa1.setX(20);
		oa1.getX();
		
		ObtestA oa2 = new ObtestA();
		oa2.setX(50);
		oa2.getX();
	
		// ObtestA.y=200;  //private이므로 맴버y에 직접접근x
		
		// y호출 ... 클래스명으로 호출
		ObtestA.setY(100);
		ObtestA.getY();
		
	}

}
