package day0619;

import java.util.Scanner;

public class QuizOper_08 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int income;
		
		income = scanner.nextInt();
		
		int m = income/10000;
		int c = income%10000/1000;
		int b = income%1000/100;
		int s = income%100/10;
		int i = income%10/1;
		
		System.out.println("만원: "+m);
		System.out.println("천원: "+c);
		System.out.println("백원: "+b);
		System.out.println("십원: "+s);
		System.out.println("일원: "+i);
		
		
	}

}
