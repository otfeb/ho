package beakjoon;

import java.util.Scanner;

public class bj_2588 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		
		int ill = b%10;
		int ship = b%100/10;
		int baek = b/100;
		
		System.out.println(a*ill);
		System.out.println(a*ship);
		System.out.println(a*baek);
		System.out.println(a*b);

	}

}
