package day0623;

public class ArrString_05 {

	public static void main(String[] args) {

		String[] str = new String[4];
		
		str[0]="최진평";
		str[1]="고은비";
		str[2]="김영환";
		str[3]="홍성경";
		
		System.out.println("for문으로 출력");
		for(int i=0;i<str.length;i++) {
			System.out.println(str[i]);
		}
		
		System.out.println("for~each문으로 출력");
		for(String a:str) {
			System.out.println(a);
		}
	}

}
