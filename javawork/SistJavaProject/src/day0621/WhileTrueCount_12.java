package day0621;

import java.util.Scanner;

public class WhileTrueCount_12 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int num,sum =0;
		int cnt=0;
		double avg=0;
		
		while(true) {
			System.out.println("숫자입력(종료:0)");
			num = scanner.nextInt();
			
			if(num==0) {
				break;
			}
			
			sum+=num;
			cnt++;
			avg=sum/cnt;
		}
		System.out.println("입력한 수의 합: "+sum);
		System.out.println("입력한 수의 개수: "+cnt);
		System.out.println("입력한 수의 평균: "+avg);

	}

}
