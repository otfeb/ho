package day0623;

import java.util.Scanner;

import day0622.ScanGugu_05;

public class SuMatch_03 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
	
		int rnd=(int)(Math.random()*100)+1;
		
		int su;	//랜던수 맞출 입력숫자
		int cnt=0;	//횟수
		
		while(true) {
			cnt++;
			System.out.print(cnt+": ");
			su = scanner.nextInt();
			
			if(su>rnd) {
				System.out.println(su+"보다 작습니다");
			}
			else if(su<rnd) {
				System.out.println(su+"보다 큽니다");
			}
			else {
				System.out.println("맞았습니다 정답은 "+rnd+"입니다");
				break;
			}
		}
		System.out.println("게임종료");

	}

}
