package day0704;

import java.security.PublicKey;
import java.util.List;
import java.util.Scanner;
import java.util.Vector;

public class VectorBorad_02 {

	//Vector<Borad> list = new Vector<Borad>();
	List<Borad> list = new Vector<Borad>();
	// 클래스 타입으로 지정했으므로 데이터를 꺼내고 받을때도 클래스
	
	// 입력
	public void inputBorad() {
		Scanner sc = new Scanner(System.in);
		String writer,subject,content;
		
		System.out.println("작성자명?");
		writer = sc.nextLine();
		System.out.println("제목?");
		subject = sc.nextLine();
		System.out.println("내용?");
		content=sc.nextLine();
		
		
		//Borad data = new Borad(writer, subject, content);
		
		Borad data = new Borad();
		data.setWriter(writer);
		data.setSubject(subject);
		data.setContent(content);
		
		list.add(data);
		
		System.out.println("현재데이터 개수: "+list.size());
		
	}
	
	public void writeBoard() {
		System.out.println("**게시판**");
		System.out.println("=================================");
		
		for(int i=0;i<list.size();i++) {
			Borad b = list.get(i);		// 리스트내에 지정된 위치에 있는 요소값 돌려줌
			
			System.out.println("번호: "+(i+1)+"\t작성자: "+b.getWriter());
			System.out.println("제목: "+b.getSubject());
			System.out.println("내용: "+b.getContent());
			System.out.println("--------------------------------");
		}
	}
	
	// 출력
	
	
	public static void main(String[] args) {
		
		VectorBorad_02 vb = new VectorBorad_02();
		Scanner sc = new Scanner(System.in);
		int n;
		
		while(true) {
			System.out.println("1.추가 2.전체출력 9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1) {
				vb.inputBorad();
			}
			else if(n==2) {
				vb.writeBoard();
			}
			else if(n==9) {
				System.out.println("프로그램 종료");
				break;
			}
			else {
				System.out.println("잘못입력");
				continue;
			}
		}

	}

}
