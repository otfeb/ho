package day0621;

import java.util.Scanner;

public class ScannerFor_11 {
	
	public static void numSum() {
		Scanner scanner = new Scanner(System.in);
		
		int n = scanner.nextInt();
		int i;
		int sum = 0;
		
		for(i=1; i<=n; i++) {
			sum+=i;
		}
		System.out.println("1부터 "+n+"까지의 합은 "+sum);
	}
	
	public static void factorialTest() {
		int result=1;
		int i;
		
		for(i=1; i<=10; i++) {
			result*=i;
		}
		System.out.println(i-1+"! : "+result);
	}
	
	public static void quizFact() {
		Scanner scanner = new Scanner(System.in);
		
		int n = scanner.nextInt();
		int i;
		int result = 1;
		
		for(i=1; i<=n; i++) {
			result*=i;
		}
		System.out.println(n+"!: "+result);
	}

	public static void main(String[] args) {

		// ScannerFor_11.numSum();
		// factorialTest();
		quizFact();
	}

}
