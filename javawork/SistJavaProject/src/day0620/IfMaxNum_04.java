package day0620;

import java.util.Scanner;

public class IfMaxNum_04 {
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		int c = scanner.nextInt();
		int max;
		
		if(a>b && a>c) {
			max = a;
		}
		else if(b>a && b>c) {
			max = b;
		}
		else {
			max = c;
		}
		System.out.println("가장큰수: "+max);
		
		
	}

}
