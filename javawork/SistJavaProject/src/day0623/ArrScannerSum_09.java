package day0623;

import java.util.Scanner;

public class ArrScannerSum_09 {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		
		int[] data = new int[5];
		int sum=0;
		int n , i;
		
		for(i=0;i<data.length;i++) {
			System.out.print(i+"번지 값: ");
			n = scanner.nextInt();
			data[i]+=n;
		}
		System.out.println("====================");
		System.out.println("[입력값 확인]");
		
		for(i=0;i<data.length;i++) {
			System.out.println((i+1)+"번째값: "+data[i]);
			sum+=data[i];
		}
		System.out.println("총 합계: "+sum);

	}

}
