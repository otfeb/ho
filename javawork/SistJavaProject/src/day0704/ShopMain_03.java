package day0704;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Vector;

public class ShopMain_03 {
	
	List<Shop> list = new Vector<Shop>();
	
	// 입력
	public void inputShop() {
		Scanner sc = new Scanner(System.in);
		String sn;
		int cnt,price;
		
		System.out.println("상품명?");
		sn = sc.nextLine();
		System.out.println("수량?");
		cnt = Integer.parseInt(sc.nextLine());
		System.out.println("가격?");
		price = Integer.parseInt(sc.nextLine());
		
		Shop data = new Shop(sn, cnt, price);		// 명시적생성자에 입력 내용 넣기
		
		list.add(data);
		
	}
	
	public void writeShop() {
		
//		Shop shop = new Shop();
//		
//		int tot = (shop.getSu()*shop.getDan());
		
		for(int i=0;i<list.size();i++) {
			Shop s = list.get(i);
			
			System.out.println("번호\t상품명\t수량\t가격\t총가격");
			System.out.println((i+1)+"\t"+s.getSangName()+"\t"+s.getSu()+"\t"+s.getDan()+"\t"+(s.getSu()*s.getDan()));
			
		}
		
	}

	public static void main(String[] args) {
		
		ShopMain_03 sm = new ShopMain_03();
		Scanner sc = new Scanner(System.in);
		int n;
		
		while(true) {
			System.out.println("1.상품입고 2.상품재고 9.종료");
			n = Integer.parseInt(sc.nextLine());
			
			if(n==1) {
				sm.inputShop();
			}
			else if(n==2) {
				sm.writeShop();
			}
			else if(n==9) {
				System.out.println("프로그램 종료");
				break;
			}
			else {
				System.out.println("잘못입력");
			}
		}

	}

}
