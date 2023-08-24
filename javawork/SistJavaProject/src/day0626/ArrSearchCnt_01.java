package day0626;

import java.util.Scanner;

public class ArrSearchCnt_01 {

	public static void main(String[] args) {

		String[] names = {"김선호","나나","이효리","엄정화","김완선","보아","유재석","하하","김연진","이진"};
		String sung;
		int cnt = 0, i;
		
		Scanner scanner = new Scanner(System.in);
		
		while(true) {
			System.out.println("===========");
			System.out.println("찾고싶은 성 입력");
			sung = scanner.nextLine();
			
			if(sung.equals("종료")) {
				System.out.println("종료");
				break;
			}
			
			for(i=0;i<names.length;i++) {
				if(names[i].startsWith(sung)) {
					cnt++;
				}
				
			}
			if(cnt==0) {
				System.out.println(sung+"씨 성을 가진 사람은 없습니다");
			}

			
			if(cnt>=1) {
				System.out.println(sung+"씨 성을 가진 사람은 총 "+cnt+"명 입니다");
			}
			cnt=0;
		}
		
		

	}

}
