package day0629;

import java.util.Scanner;

public class SungjukMain {
	
	public static void getSungjuk(Sungjuk s) {
		System.out.println(s.getName()+"\t"+s.getJava()+"\t"+s.getOracle()+"\t"+s.getTot()+"\t"+s.getAvg()+"\t"+s.getPyungga());
	}

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int inwon;
		Sungjuk[] sj;
		String schoolName;
		
		System.out.println("입력할 인원수");	// 배열할당
		inwon = Integer.parseInt(scanner.nextLine());
		
		System.out.println("학교명?");
		schoolName = scanner.nextLine();
		
		Sungjuk.setSchoolName(schoolName);
		
		// 인원수만큼 배열할당
		sj = new Sungjuk[inwon];
		
		// 인원수 입력
		for(int i=0;i<inwon;i++) {
			System.out.println((i+1)+"번 학생 이름?");
			String name = scanner.nextLine();
			
			System.out.println("자바와 오라클 점수 입력");
			int java = Integer.parseInt(scanner.nextLine());
			int oracle = Integer.parseInt(scanner.nextLine());
			
			// i번째 학생성적 생성
			sj[i] = new Sungjuk();
			
			//set
			sj[i].setName(name);
			sj[i].setJava(java);
			sj[i].setOracle(oracle);
		}
		
		// 결과출력
		System.out.println("**결과출력**");
		System.out.println("학교명: "+Sungjuk.getSchoolName());
		System.out.println("학생명\t자바점수\t오라클점수\t총점\t평균\t합격여부");
		System.out.println("-------------------------------------");
		
		for(Sungjuk s1:sj) {
			getSungjuk(s1);
		}

	}

}
