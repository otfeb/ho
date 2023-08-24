package day0620;

import java.util.Scanner;

public class Return_09 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int score;
		
		System.out.println("점수입력(1~100)");
		score = scanner.nextInt();
		
		if(score<1 || score>100) {
			System.out.println("잘못입력했습니다");
			return;
		}
		else {
			System.out.println("점수: "+score);
		}

	}

}
