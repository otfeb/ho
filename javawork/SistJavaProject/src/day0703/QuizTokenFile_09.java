package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

public class QuizTokenFile_09 {
	
	public static void fruitRead() {
		String fileName = "C:\\sist0615\\file\\fruit.txt";
		FileReader fr = null;
		BufferedReader br = null;
		int tot=0;
		
		try {
			fr = new FileReader(fileName);
			br = new BufferedReader(fr);
			
			System.out.println("**과일목록**");
			System.out.println("상품\t수량\t단가\t총금액");
			System.out.println("-----------------------");
			
			while(true) {
				String s = br.readLine();
				
				if(s==null) {
					break;
				}
				
				// spilt 분리
//				String[] arr = s.split(",");
//				tot = Integer.parseInt(arr[1])*Integer.parseInt(arr[2]);
//				
//				System.out.println(arr[0]+"\t"+arr[1]+"\t"+arr[2]+"\t"+tot+"원");
				
				// Tokeneizer 분리
				StringTokenizer st = new StringTokenizer(s, ",");
				String su;
				String price;
				
				//tot = Integer.parseInt(cnt)*Integer.parseInt(price);
				
				System.out.println(st.nextToken()+"\t"+(su=st.nextToken())+"\t"+(price=st.nextToken())+"\t"+Integer.parseInt(su)*Integer.parseInt(price)+"원");
				
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e) {
			// TODO: handle exception
		}
		
	}

	public static void main(String[] args) {
		
		fruitRead();

	}

}
