package day0622;

import java.util.Scanner;

public class QuizForWhile_02 {
	
	public static void quiz1() {
		
		Scanner scanner = new Scanner(System.in);
		
		int n;
		int sum=0;
		
		while(true) {
			System.out.println("점수입력 :");
			n = scanner.nextInt();
			
			if(n==0) {
				break;
			}
			if(n<1 || n>100) {
				continue;
			}
			sum+=n;
		}
		System.out.println("점수 총 합계: "+sum);
		
	}
	public static void quiz2() {
		
		Scanner scanner = new Scanner(System.in);
		
		String score;
		int sum=0, cnt=0;
		double avg=0;
		
		while(true) {
			System.out.println("점수입력: ");
			score = scanner.next();
			if(score.equals("끝")) {
				break;
			}
			cnt++;
			sum+=Integer.parseInt(score);
		}
		avg = (double)sum/cnt;
		System.out.println("숫자는: "+cnt);
		System.out.println("합계는: "+sum);
		System.out.println("평균은: "+avg);
		
		
	}

	public static void quiz3() {
	
		Scanner scanner = new Scanner(System.in);
		
		int i;
		int n;
		int sum=0;
		
		for(i=1; i<=5; i++) {
			
			System.out.print(i+"번 점수: ");
			n = scanner.nextInt();
			
			if(n<1 || n>100) {
				System.out.println("   잘못입력했어요");
				i--;
				continue;
			}
			
			
			sum+=n;
		}
		System.out.println("총 합계: "+sum+"점");
	
	}

	public static void quiz4() {
	
	
	
	}

	public static void quiz5() {
	
	
	
	}

	public static void main(String[] args) {

		//quiz1();
		//quiz2();
		quiz3();
	}

}
