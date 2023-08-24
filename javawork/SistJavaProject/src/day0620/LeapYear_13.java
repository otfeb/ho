package day0620;

import java.util.Scanner;

public class LeapYear_13 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int ly = scanner.nextInt();
		
		if(ly%4==0 && ly%100!=0 || ly%400==0) {
			System.out.println(ly+"년도는 윤년!!");
		}
		else {
			System.out.println(ly+"년도는 평년!!");
		}

	}

}
