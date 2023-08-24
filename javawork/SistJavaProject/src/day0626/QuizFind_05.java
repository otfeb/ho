package day0626;

import java.util.Scanner;

public class QuizFind_05 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int i,j, input;
		boolean bool;
		int[] arrNums = {55,65,25,75,85,15,95,115,105};
		
		while(true) {
			System.out.print("입력값(0 이면 종료) : ");
			input = scanner.nextInt();
			
			bool = false;
			
			if(input == 0) {
				System.out.println("\t종료");
				break;
			}
			
			for(i=0;i<arrNums.length;i++) {
				if(arrNums[i] == input) {
					System.out.println("\t"+input+"는 "+(i+1)+"번째에 있어요!");
					bool = true;
				}
			}
			
			if(!bool) {
				System.out.println(input+"은 없습니다");
			}
			
		}

	}

}
