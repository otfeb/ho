package day0620;

import java.util.Calendar;
import java.util.Scanner;

public class ScannerReview_01 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		Calendar cal = Calendar.getInstance();
		
		int year;
		String name, hp, adr;
		
		year = Integer.parseInt(scanner.nextLine());
		name = scanner.nextLine();
		hp = scanner.nextLine();
		adr = scanner.nextLine();
		
		int curyear = cal.get(cal.YEAR);
		int age = curyear-year;
		
		System.out.println("====================");
		System.out.println("[개인정보]");
		System.out.println("이름: "+name);
		System.out.println("나이: "+age+"세");
		System.out.println("연락처: "+hp);
		System.out.println("주소: "+adr);
	}

}
