package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileBuffer_05 {
	
	public static void read1() {
		String filename = "C:\\sist0615\\File\\memo.txt";
		BufferedReader br = null;
		FileReader fr = null;
		
		
		
		try {
			fr = new FileReader(filename);
			System.out.println("파일을 열었어요!!");
			br = new BufferedReader(fr);		// 열어온 파일을 버퍼에 저장
			
			while(true) {
				String s = br.readLine();
				
				if(s==null)
					break;
				
				System.out.println(s);
			}
			
		} catch (FileNotFoundException e) {
			//e.printStackTrace();
			System.out.println("파일이 없어요: "+e.getMessage());
		}
		catch (IOException e) {
			
		}
		finally {
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	

	public static void main(String[] args) {
		read1();
		System.out.println("**메모 정상종료**");
		

	}

}
