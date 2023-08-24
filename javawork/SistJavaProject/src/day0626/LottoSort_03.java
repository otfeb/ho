package day0626;

import java.util.Arrays;

public class LottoSort_03 {

	public static void main(String[] args) {

		int i,j;
		int[] lotto = new int[6];
		
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
