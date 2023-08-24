package day0623;

import java.util.Random;

public class Random_02 {

	public static void main(String[] args) {

		Random rd = new Random();
		
		int i;
		
		System.out.println("0~9사이의 난수발생");
		
		for(i=0; i<3; i++) {
			int n = rd.nextInt(10);
			System.out.println(n+1);
		}

	}

}
