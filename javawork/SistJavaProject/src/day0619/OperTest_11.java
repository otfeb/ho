package day0619;

public class OperTest_11 {

	public static void main(String[] args) {

		int score = 79;
		
		char grade = (score>90)?'A':((score>80)?'B':'C');
		
		System.out.println(score+"점은 "+grade+"등급입니다");

	}

}
