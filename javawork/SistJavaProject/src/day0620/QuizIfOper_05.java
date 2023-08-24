package day0620;

import java.util.Scanner;

public class QuizIfOper_05 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		String ipad;
		int count, pay;
		
		ipad = scanner.nextLine();
		count = scanner.nextInt();
		pay = scanner.nextInt();
		
		int total = count*pay;
		System.out.println(ipad+" 3개는 총 "+total+"원 입니다");
		
		int dc = (int)(total*0.9);
		if(count>=3) {
			total = dc;
		}
		
		System.out.println("DC된 총금액: "+total+"원");

	}

}
