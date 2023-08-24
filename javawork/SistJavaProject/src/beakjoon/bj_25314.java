package beakjoon;

import java.util.Scanner;

public class bj_25314 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int n = scanner.nextInt();
		int i;
		String in = "int";
		
		for(i=0;i<n/4;i++) {
			in = "long "+in;
		}
		System.out.println(in);

	}

}
