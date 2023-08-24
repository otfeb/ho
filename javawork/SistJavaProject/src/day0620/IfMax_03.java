package day0620;

import java.util.Scanner;

public class IfMax_03 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		int x,y,max;
		
		System.out.println("[두개의 숫자를 입력하시오]");
		x = scanner.nextInt();
		y = scanner.nextInt();
		
		System.out.println("입력한 두수: "+x+","+y);
		// System.out.println(Math.max(x, y));
		
		max = x>y?x:y;
		
		//System.out.println("두수중에서 더 큰값은 "+max+"입니다");
		
		max = x>y?x:y;
		System.out.println("두수중에서 "+max+"더 크다");
		System.out.println("첫번째수가 더 "+(x>y?"크다":"작다"));
			

	}

}
