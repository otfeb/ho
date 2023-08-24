package day0622;

import java.util.Scanner;

public class StartsWith_03 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		String name;
		int cnt=0;
		
		while(true) {
			System.out.println("이름입력(끝이면 종료)");
			name = scanner.nextLine();
			
			if(name.equals("끝")) {
				break;
			}
			
			if(name.startsWith("이")) {
				cnt++;
			}
		}
		System.out.println("이씨성을 가진사람은 총"+cnt+"명 입니다");
	}

}
