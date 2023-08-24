package beakjoon;

import java.util.Scanner;

public class bj_2884 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int h = scanner.nextInt();
		int m = scanner.nextInt();
		
		if(m<45) {
			if(h<=0) {
				h=23;
				m = m+60-45;
			}
			else {
				h--;
				m = m+60-45;
			}
		}
		else {
			m = m-45;
		}
		System.out.print(h+" "+m);

	}

}
