package day0622;

import java.util.Scanner;

public class QuizForWhile_08 {
	
	public static void quiz2() {
		
		Scanner scanner = new Scanner(System.in);
		int i;
		int n;
		int pos=0 , neg=0;
		
		for(i=1; i<=10; i++) {
			System.out.print(i+": ");
			n = scanner.nextInt();
			if(n>0) {
				pos++;
			}
			else if(n<0) {
				neg++;
			}
		}
		System.out.println("양수갯수: "+pos);
		System.out.println("음수갯수: "+neg);
		
	}

	public static void main(String[] args) {

//		Scanner scanner = new Scanner(System.in);
//		
//		int age;
//		int a=0, b=0, c=0;
//
//		while(true) {
//			age = scanner.nextInt();
//			
//			if(age==0) {
//				break;
//			}
//			else if(age>=50) {
//				a++;
//			}
//			else if(age>=30 && age<50) {
//				b++;
//			}
//			else {
//				c++;
//			}
//		}
//		System.out.println("================");
//		System.out.println("50세 이상: "+a+"명");
//		System.out.println("30세 이상: "+b+"명");
//		System.out.println("그이외: "+c+"명");
		
		quiz2();

	}

}
