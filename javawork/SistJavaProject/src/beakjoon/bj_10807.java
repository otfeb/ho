package beakjoon;

import java.util.Scanner;


public class bj_10807 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int i,j,v;
		int same = 0;
		int n = scanner.nextInt();
		int[] arr = new int[n];
		
		for(i=0; i<n; i++) {
			arr[i] = scanner.nextInt();
		}
		
		v = scanner.nextInt();
		
		for(j=0; j<n; j++) {
			if(arr[j]==v) {
			same++;
			}
		}
		System.out.println(same);
		
	}

}
