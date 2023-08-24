package day0623;

import java.util.Scanner;

public class QuizArrFind_13 {

	public static void main(String[] args) {

		String[] stuNames = {"이성신","이민규","박병주","최성현","김영준","강연주","최진평","고은비","송주영"};
		
		Scanner scanner = new Scanner(System.in);
		String name;
		boolean flag;
		int i;
		
		while(true) {
			System.out.println("이름 입력:");
			name = scanner.nextLine();
			
			if(name.equals("종료")) {
				System.out.println("종료");
				break;
			}
			
			flag = false;
			
			for(i=0; i<stuNames.length; i++) {
				if(name.equals(stuNames[i])) {
					System.out.println((i+1)+"번째에서 검색");
					flag = true;
				}
			}
			if(!flag) {
				System.out.println("찾지 못하였습니다");
			}
		}

	}

}
