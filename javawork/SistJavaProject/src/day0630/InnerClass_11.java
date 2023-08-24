package day0630;

// 내부클래스 - 특정클래스 내에 또 다른 클래스가 정의됨
// 하나의 맴버처럼 사용가능(외부의 모든 멤버들을 자신의 멤버처럼 사용가능)
// 상속이 하나인 단점을 어느정도 보완
class OuterObj{
	
	class InnerObj{
		
		public void write() {
			System.out.println("내부클래스의 메소드");
		}
		
	}
	
	public void showMsg() {
		System.out.println("외부클래스의 메소드");
		System.out.println("외부에서 내부클래스 메소드 호출");
		
		InnerObj inobj = new InnerObj();
		inobj.write();
	}
}


public class InnerClass_11 {

	public static void main(String[] args) {
		
		OuterObj outObj = new OuterObj();
		outObj.showMsg();
		System.out.println("-----------------------");
		
		// 내부클래스의 메소드 선언 .. 외부통해서만 가능
		// OuterObj.InnerObj obj = outObj.new InnerObj();
		OuterObj.InnerObj obj = new OuterObj().new InnerObj();
		obj.write();

	}

}
