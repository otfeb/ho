package beakjoon;

import java.util.Scanner;

public class bj_25304 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int i, price, cnt;
		int x = scanner.nextInt();
		int n = scanner.nextInt();
		int sum=0;
		
		for(i=0; i<n; i++) {
			price = scanner.nextInt();
			cnt = scanner.nextInt();
			sum+= price*cnt;
		}
		if(x==sum) {
			System.out.println("Yes");
		}
		else {
			System.out.println("No");
		}

	}

}
