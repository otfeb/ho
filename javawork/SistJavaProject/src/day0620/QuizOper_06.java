package day0620;

import java.util.Scanner;

public class QuizOper_06 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		String name = scanner.nextLine();
		int mat = scanner.nextInt();
		int eng = scanner.nextInt();
		int kor = scanner.nextInt();
		
		int total = mat+eng+kor;
		double avg = (double)total/3;
		
		String result;
		
		
		if(avg>=70 && mat>=40 && eng>=40 && kor>=40) {
			result = "합격";
		}
		else {
			result = "불합격";
		}
		
		System.out.println("3과목점수: "+mat+","+eng+","+kor);
		System.out.println("평균: "+avg);
		System.out.println("----------------------------");
		System.out.println(name+"님은 "+result+"입니다");

	}

}
