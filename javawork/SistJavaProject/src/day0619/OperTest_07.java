package day0619;

import java.util.Scanner;

public class OperTest_07 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		double x,y;
		
		System.out.println("두수를 입력해 주세요");
		x = scanner.nextInt();
		y = scanner.nextInt();
		
		System.out.println("더하기="+(x+y));
		System.out.println("뺴기="+(x-y));
		System.out.println("곱하기="+(x*y));
		System.out.println("나누기="+(x/y));
		System.out.println("나머지="+(x%y));

	}

}
