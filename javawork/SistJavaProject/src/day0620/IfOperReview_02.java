package day0620;

import java.util.Scanner;

public class IfOperReview_02 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		String mes, grade;
		int score = scanner.nextInt();
		
		mes = score>=90?"참잘함":
			score>=80?"잘함":"다음기회에";
			
		if(score>=90) {
			grade = "A";
		}
		else if(score>=80) {
			grade = "B";
		}
		else if(score>=70) {
			grade = "C";
		}
		else if(score>=60) {
			grade = "D";
		}
		else {
			grade = "F";
		}
		
		System.out.println("=====================");
		System.out.println("점수: "+score);
		System.out.println("평가메세지: "+mes);
		System.out.println("학점: "+grade);
		
	}

}
