package day0619;

import java.util.Calendar;
import java.util.Scanner;

public class OperTest_12 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int myYear, age;
		String name, ddi;
		
		System.out.println("이름입력: ");
		name = scanner.nextLine();
		
		System.out.println("태어난 연도 입력: ");
		myYear = scanner.nextInt();
		
		Calendar cal = Calendar.getInstance();
		age = cal.get(cal.YEAR)-myYear;
		
		ddi=myYear%12==0?"원숭이":
			myYear%12==1?"닭":
				myYear%12==2?"개":
					myYear%12==3?"돼지":
						myYear%12==4?"쥐":
							myYear%12==5?"소":
								myYear%12==6?"호랑이":
									myYear%12==7?"토끼":
										myYear%12==8?"용":
											myYear%12==9?"뱀":
												myYear%12==10?"말":"양";
		System.out.println("[나이와 띠구하기]");
		System.out.println("이름: "+name);
		System.out.println("나이: "+age+"세");
		System.out.println("띠: "+ddi);
		

	}

}
