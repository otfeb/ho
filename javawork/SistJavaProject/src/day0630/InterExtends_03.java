package day0630;

interface InterAA{
	public void eat();
	public void go();
}
////////////////////////////////
interface InterBB extends InterAA{
	public void ride();
}
///////////////////////////////
class InterImpl2 implements InterBB{

	@Override
	public void eat() {
		System.out.println("저녁을 먹어요");
	}

	@Override
	public void go() {
		System.out.println("롯데월드에 가요");
	}

	@Override
	public void ride() {
		System.out.println("자전거 타고 놀아요");
	}
	
}
///////////////////////////////
public class InterExtends_03 {

	public static void main(String[] args) {
		
		// 3개모두호출
		InterImpl2 in1 = new InterImpl2();
		in1.eat();
		in1.go();
		in1.ride();
		
		System.out.println();
		
		// 다형성호출
		InterAA in2 = new InterImpl2();
		in2.eat();
		in2.go();
		
		System.out.println();
		
		InterBB in3 = new InterImpl2();
		in3.ride();
		in3.eat();
		in3.go();

	}

}
