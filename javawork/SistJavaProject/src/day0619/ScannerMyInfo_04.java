package day0619;

import java.util.Scanner;

public class ScannerMyInfo_04 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		System.out.print("이름을 입력하세요: ");
		String name = sc.nextLine();
		System.out.print("핸드폰번호: ");
		String phone = sc.nextLine();
		System.out.print("주소: ");
		String adr = sc.nextLine();
		
		System.out.println("============");
		System.out.println("이름: "+name);
		System.out.println("연락처: "+phone);
		System.out.println("주소: "+adr);

	}

}
