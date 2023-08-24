package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

//score.txt를 읽고 몇개인지 구하고 총점, 평균까지 구해서 출력
public class FileExcep_06 {
	
	public static void scoreRead() {
		String filename = "C:\\sist0615\\file\\score.txt";
		BufferedReader br = null;
		FileReader fr = null;
		int cnt=0, sum=0;
		double avg = 0;
				
		
		try {
			fr = new FileReader(filename);
			System.out.println("파일정상적으로 읽음");
			
			br = new BufferedReader(fr);
			
			while(true) {
				
				
				String s = br.readLine();
				
				if(s==null)
					break;
				
				cnt++;			// 읽은 개수
				sum+= Integer.parseInt(s);
				
				
				
				System.out.println(s);
			}
			
			avg = (double)sum/cnt;
			
			System.out.println("개수: "+cnt);
			System.out.println("합계: "+sum);
			System.out.printf("평균: %.2f",avg);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			
		}
		finally {
			// 자원은 오픈한 반대순서로 닫기

				try {
					br.close();
					fr.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		
	}

	public static void main(String[] args) {
		
		scoreRead();
		System.out.println("**정상종료**");

	}

}
