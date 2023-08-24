package day0619;

import java.util.Scanner;

public class QuizOper_13 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		String name;
		double cm;
		int kg;
		
		name = scanner.nextLine();
		cm = scanner.nextDouble();
		kg = scanner.nextInt();
		
		double cmkg = (cm-100)*0.9;
		
		System.out.println("[학생 키 정보]");
		System.out.println("이름: "+name);
		System.out.println("키: "+cm+"cm");
		System.out.println("몸무게: "+kg+"kg");
		System.out.println("권장 표준 몸무게는 "+cmkg+"kg 입니다");
		
		

	}

}
