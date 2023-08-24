package day0619;

import java.util.Calendar;
import java.util.Scanner;

public class ScannerMyAge_05 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		Calendar cal = Calendar.getInstance();
		
		int today = cal.get(cal.YEAR);
		
		System.out.print("당신의 이름은? ");
		String name = scanner.nextLine();
		System.out.print("당신의 출생년도는? ");
		int birth = scanner.nextInt();
		System.out.println("==============");
		System.out.println("이름: "+name);
		System.out.println("현재년도: "+today+"년");
		System.out.println("나이: "+(today-birth)+"세");

	}

}
