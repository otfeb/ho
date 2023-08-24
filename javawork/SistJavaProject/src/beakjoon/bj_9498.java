package beakjoon;

import java.util.Scanner;

public class bj_9498 {

	public static void main(String[] args) {
			
		Scanner scanner = new Scanner(System.in);
		
		int t = scanner.nextInt();
		char grade;
		
		if(t>=90 && t<=100) {
			grade = 'A';
		}
		else if(t>=80 && t<=89) {
			grade = 'B';
		}
		else if(t>=70 && t<=79) {
			grade = 'C';
		}
		else if(t>=60 && t<=69) {
			grade = 'D';
		}
		else {
			grade = 'F';
		}
		
		System.out.println(grade);
	}

}
