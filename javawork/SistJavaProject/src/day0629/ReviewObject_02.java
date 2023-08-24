package day0629;

class Starbucks{
	private String store;
	private String menu;
	private String goods;
	
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	
	public void print() {
		System.out.println("나는 스타벅스 "+getStore()+"지점에 왔습니다");
		System.out.println(getMenu()+"를 주문합니다");
		System.out.println(getGoods()+"을 샀어요");
	}
	
	
}

/////////////////////////////////
public class ReviewObject_02 {
	


	public static void main(String[] args) {

		Starbucks sb = new Starbucks();
		sb.setStore("코엑스");
		sb.setMenu("아이스 아메리카노");
		sb.setGoods("우산");
		
		sb.print();

	}

}
