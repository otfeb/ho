package beakjoon;

import java.util.Scanner;

public class bj_8393 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int n = scanner.nextInt();
		int sum=0;
		int i;
		
		for(i=1; i<=n; i++) {
			sum+=i;
		}
		System.out.println(sum);

	}

}
