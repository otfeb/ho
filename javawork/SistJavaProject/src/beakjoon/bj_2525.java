package beakjoon;

import java.util.Scanner;

public class bj_2525 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int h = scanner.nextInt();
		int m = scanner.nextInt();
		int n = scanner.nextInt();
		
		if(m+n>=60) {
			h = h + (m+n)/60;
			if(h>=24) {
				h = h - 24;
				m = (m+n)%60;
			}
			else {
				m = (m+n)%60;
			}
		}
		else {
			m = m+n;
		}
		System.out.println(h+" "+m);

	}

}
