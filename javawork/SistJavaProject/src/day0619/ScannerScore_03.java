package day0619;

import java.util.Scanner;

public class ScannerScore_03 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		String name;
		int kor, eng, mat;
		int total;
		double avg;
		
		System.out.println("학생의 이름은?");
		name = sc.nextLine();
		System.out.println("국영수점수는?");
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();

		total = kor+eng+mat;
		avg = total/3.0;
		
		System.out.println("===============");
		System.out.println("학생명: "+name);
		System.out.println("국어점수: "+kor);
		System.out.println("영어점수: "+eng);
		System.out.println("수학점수: "+mat);
		System.out.println("===============");
		System.out.println("총점: "+total+"점");
		System.out.println("평균: "+avg+"점");
	}

}
