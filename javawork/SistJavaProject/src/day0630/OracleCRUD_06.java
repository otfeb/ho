package day0630;

import java.util.Scanner;

abstract class Command{
	abstract public void write();
}
///////////////////////////////
class Insert1 extends Command{

	@Override
	public void write() {
		System.out.println("명령어를 추가합니다");
	}
	
}
///////////////////////////////
class List extends Command{

	@Override
	public void write() {
		System.out.println("명령어를 작성합니다");
	}
	
}
////////////////////////////////
class Modify extends Command{

	@Override
	public void write() {
		System.out.println("명령어를 수정합니다");
	}
	
}
///////////////////////////////
class Delete1 extends Command{

	@Override
	public void write() {
		System.out.println("명령어를 삭제합니다");
	}
	
}

public class OracleCRUD_06 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		Command command = null;
		int n;
		
		exit:while(true) {
			System.out.println("1.추가 2.작성 3.수정 4.삭제 9.종료");
			System.out.println("========================");
			n = scanner.nextInt();
			
			switch(n) {
			case 1:
				command = new Insert1();
				break;
			case 2:
				command = new List();
				break;
			case 3:
				command = new Modify();
				break;
			case 4:
				command = new Delete1();
				break;
			case 9:
				System.out.println("종료합니다");
				break exit;
			default:
				System.out.println("잘못입력했습니다");
				break;
			}
			if(n<=4 && n>0)
				command.write();
		}

	}

}
