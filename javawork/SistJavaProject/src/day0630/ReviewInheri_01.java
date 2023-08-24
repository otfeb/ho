package day0630;

class Market{
	private String sangpum;
	private int su;
	
	public Market() {
		// TODO Auto-generated constructor stub
	}
	
	public Market(String sangpum,int su) {
		this.sangpum=sangpum;
		this.su=su;
	}
	
	public void getMarket() {
		System.out.println("상품명: "+sangpum);
		System.out.println("수량: "+su);
	}
}
/////////////////////////////
class MyMarket	extends Market{
	private int price;
	
	public MyMarket() {
		price=5000;
	}
	
	public MyMarket(String sangpum,int su,int price) {
		super(sangpum,su);
		this.price=price;
	}
	
	@Override
	public void getMarket() {
		System.out.println("단가: "+price);
		super.getMarket();
	}
}

public class ReviewInheri_01 {

	public static void main(String[] args) {
		
		// 디폴트
		Market m1 = new Market();
		m1.getMarket();
		
		System.out.println();
		
		// 명시적
		Market m2 = new MyMarket("오렌지", 10, 6000);
		m2.getMarket();

	}

}
