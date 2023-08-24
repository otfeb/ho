package beakjoon;

import java.util.Scanner;

public class bj_1085 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		int x = scanner.nextInt();
		int y = scanner.nextInt();
		int w = scanner.nextInt();
		int h = scanner.nextInt();
		int min;
		int min2;
		
		if(w-x<x) {
			min=w-x;
		}
		else {
			min=x;
		}
		if(h-y<y) {
			min2=h-y;
		}
		else {
			min2=y;
		}
		System.out.println(Math.min(min, min2));
		
	}

}
