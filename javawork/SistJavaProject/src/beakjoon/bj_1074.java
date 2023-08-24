package beakjoon;

import java.util.Scanner;

public class bj_1074 {
	
	public int row(int v) {
		int visit=0;
		
		Scanner scanner = new Scanner(System.in);
		int n=scanner.nextInt();
		int r=scanner.nextInt();
		int c=scanner.nextInt();
		
		int gisu=(int) Math.pow(2,n);
		
		int arr[][]=new int[gisu][gisu];
		
		if(n!=0) {
			n--;
			
			return n;
		}
		
		
		return visit;
	}

	public static void main(String[] args) {
		
		bj_1074 bj_1074 = new bj_1074();
		
	}

}
