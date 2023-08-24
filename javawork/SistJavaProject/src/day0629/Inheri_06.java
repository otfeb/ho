package day0629;

class shop{
	String sangpum;
	String su;
	
	public shop(String sang,String su) {
		this.sangpum=sang;
		this.su=su;
	}
	
	public void writeShop() {
		System.out.println("상품명: "+sangpum);
		System.out.println("개수: "+su);
	}
}

class MyCart extends shop{

	int price;
	
	public MyCart(String sang, String su,int price) {
		super(sang, su);
		this.price=price;
	}
	
	@Override
	public void writeShop() {
		super.writeShop();
		System.out.println("상품가격: "+price+"원");
	}
	
}

//////////////////////////////////////////
public class Inheri_06 {

	public static void main(String[] args) {
		
		MyCart mc = new MyCart("노트북", "5개", 1500000);
		mc.writeShop();

	}

}
