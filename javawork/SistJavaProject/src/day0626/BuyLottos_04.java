package day0626;

import java.util.Scanner;

public class BuyLottos_04 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		
		int i , j , n , guip;	// 몇장, 얼마
		int[] lotto = new int[6];
		
		System.out.println("로또 몇장을 구입할지를 입력해주세요");
		guip = scanner.nextInt();
		
		// 예외조항
		if(guip<1000) {
			System.out.println("***구입금액이 부족합니다***");
			return;	// 메인함수 빠져나감
		}
		
		for(n=0; n<guip/1000; n++) {
			
			System.out.printf("%d회: ",n+1);
		
			for(i=0;i<lotto.length;i++) {
			
				lotto[i] = (int)(Math.random()*45)+1;
			
				for(j=0;j<i;j++) {
					if(lotto[i]==lotto[j]) {
					
						i--;	// 같은 번지에 다시값을 구하기위해
						break;	// i++로 이동
					}
				}
			}
		
		//Arrays.sort(lotto);
		
			for(i=0;i<lotto.length-1;i++) {
				for(j=i+1;j<lotto.length;j++) {
					if(lotto[i]>lotto[j]) {
						int temp = lotto[i];
						lotto[i] = lotto[j];
						lotto[j] = temp;
					}
				}
			}
		
			for(i=0;i<lotto.length;i++) {
				System.out.printf("%5d",lotto[i]);
			}
			System.out.println();
		}

	}

}
