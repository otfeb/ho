package day0619;

import java.util.Scanner;

public class KeyBoardIn_02 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		String name;
		int age;
		String city;
		
		System.out.print("이름을 입력해 보세요: ");
		name = sc.nextLine();
		
		System.out.print("나이를 입력해 보세요: ");
		//age = sc.nextInt();
		age = Integer.parseInt(sc.nextLine());
		
		System.out.print("당신이 사는 지역은?: ");
		city = sc.nextLine();
		
		System.out.println("내이름은 "+name+"입니다");
		System.out.println("내나이는 "+age+"입니다");
		System.out.println("내가 사는 지역은 "+city+"입니다");
		
		
	}

}
