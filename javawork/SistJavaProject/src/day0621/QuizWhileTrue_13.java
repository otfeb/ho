package day0621;

import java.util.Scanner;

public class QuizWhileTrue_13 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		String n;
		int sum=0;
		int cnt=0;
		double avg=0;
		
		while(true) {
			System.out.println("입력받을 숫자는(q or Q 종료): ");
			n = scanner.next();
			
			if(n.equals("q") || n.equals("Q")) {
				break;
			}
			
			sum+=Integer.parseInt(n);
			cnt++;
			
			}
		avg = (double) sum/cnt;
		
		System.out.println("총합은: "+sum);
		System.out.println("총 개수는: "+cnt);
		System.out.println("평균은: "+avg);

	}

}
