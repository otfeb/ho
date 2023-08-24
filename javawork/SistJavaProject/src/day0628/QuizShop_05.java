package day0628;

class MyShop{
	private String sangpumName;
	private String ipgoday;
	private String chulgoday;
	
	// 3개의 데이터를 한번에 수정할수있는 메소드
	public void setThree(String sn,String ig,String cg) {
		this.sangpumName=sn;
		this.ipgoday=ig;
		this.chulgoday=cg;
	}
	
	// 3개의 데이터를 한번에 출력할수있는 메소드
	public void getThree() {
		System.out.println("품명: "+sangpumName);
		System.out.println("입고일: "+ipgoday);
		System.out.println("출고일: "+chulgoday);
	}
}

public class QuizShop_05 {

	public static void main(String[] args) {

		System.out.println("***상품입고***");
		
		MyShop ms1 = new MyShop();
		MyShop ms2 = new MyShop();
		
		ms1.setThree("키보드", "2023-06-01", "2023-06-20");
		ms2.setThree("모니터", "2023-06-04", "2023-06-23");
		
		ms1.getThree();
		System.out.println("----------------------");
		ms2.getThree();
		
		

	}

}
