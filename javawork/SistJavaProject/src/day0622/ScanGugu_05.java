package day0622;

import java.util.Scanner;

public class ScanGugu_05 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		int dan;
		
		while(true) {
			System.out.println("단을 입력하세요(종료:0)");
			dan = scanner.nextInt();
			
			if(dan==0) {
				System.out.println("종료");
				break;
			}
			if(dan<2 || dan>9) {
				System.out.println("2~9단까지만 입력가능");
				continue;
			}
			for(int j=1; j<=9; j++) {
				System.out.printf("%d x %d = %2d\n",dan,j,dan*j);
			}
			System.out.println();
			}
		}

	}

