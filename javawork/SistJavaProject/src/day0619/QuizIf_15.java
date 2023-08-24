package day0619;

import java.util.Scanner;

public class QuizIf_15 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int score;
		String grade;
		
		score = scanner.nextInt();
		
		if(score>=90) {
			grade = "장학생";
		}
		else if(score>=80) {
			grade = "우수상";
		}
		else {
			grade = "재시험";
		}
		
		System.out.println("당신은 "+score+"점이므로 평가는 "+grade);

	}

}
