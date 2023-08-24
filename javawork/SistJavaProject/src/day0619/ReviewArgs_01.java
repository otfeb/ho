package day0619;

public class ReviewArgs_01 {

	public static void main(String[] args) {

		String name = args[0];
		int kor = Integer.parseInt(args[1]);
		int eng = Integer.parseInt(args[2]);
		int mat = Integer.parseInt(args[3]);
		
		int total = kor+eng+mat;
		double evg = total/args.length;
		
		System.out.println("[중간고사 시험점수]");
		System.out.println("학생명: "+name);
		System.out.println("국어점수: "+kor);
		System.out.println("영어점수: "+eng);
		System.out.println("수학점수: "+mat);
		System.out.println("총점: "+total);
		System.out.println("평균: "+evg);

	}

}
