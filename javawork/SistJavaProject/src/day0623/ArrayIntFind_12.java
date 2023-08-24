package day0623;

import java.util.Scanner;

public class ArrayIntFind_12 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);

		int[] data = {2,55,16,33,97,158,246,10,60,88};
		int su, i;
		boolean flag;
		
		while(true) {
			
			System.out.println("검색할 숫자 입력");
			su = scanner.nextInt();
			
			if(su==0) {
				System.out.println("종료");
				break;
			}
			
			flag = false;
			
			for(i=0;i<data.length;i++) {
				if(su==data[i]) {
					flag=true;
					System.out.println((i+1)+"번째에서 검색");
				}
				
			}
			if(!flag) {
				System.out.println(su+"는 데이터에 없습니다");
			}
			
		}

	}

}
