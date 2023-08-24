package day0620;

import java.util.Scanner;

public class SwitchMonth_12 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int month;
		
		System.out.println("월을 입력해 주세요");
		month = scanner.nextInt();
		
		switch(month) {
		case 2:
			System.out.println("28 또는 29일까지 있습니다");
			break;
		case 4: case 6: case 9: case 11:
			System.out.println("30일까지 있습니다");
			break;
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:
			System.out.println("31일까지 있습니다");
			break;
		default:
			System.out.println("존재하지 않는 달입니다");
			break;
		}
		

	}

}
