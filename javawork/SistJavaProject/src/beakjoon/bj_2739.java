package beakjoon;

import java.util.Scanner;

public class bj_2739 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int n = scanner.nextInt();
		int i;
		
		for(i=1; i<=9; i++) {
			System.out.println(n+" * "+i+" = "+n*i);
		}

	}

}
