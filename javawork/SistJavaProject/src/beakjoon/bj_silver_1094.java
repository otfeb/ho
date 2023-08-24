package beakjoon;

import java.util.Scanner;

public class bj_silver_1094 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		int x = scanner.nextInt();
		int[] mak = {64,32,16,8,4,2,1};
		
		int sum = 0;
		int cnt = 0;
		
		
		while(true) {
			if(x<=64) {
				for(int i=0;i<mak.length;i++) {
					if(x==mak[i]) {
						cnt++;
						break;
					}
					else if(x<mak[i]){
						int mak2 = mak[i]/2;
						cnt++;
						if(x<mak2) {
							int mak3 = mak2/2;
							cnt++;
							if(x<mak3) {
								
							}
						}
						
					}
				}
			}
		}	
	}
}
