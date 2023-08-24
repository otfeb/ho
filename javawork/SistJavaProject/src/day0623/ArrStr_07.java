package day0623;

public class ArrStr_07 {

	public static void main(String[] args) {

		String[] str1 = {"김밥", "피자","스파게티","햄버거","짜장면"}; 
		String[] str2 = new String[5];
		
		str2[0]="빨강";
		str2[2]="노랑";
		str2[4]="파랑";
		
		int i;
		
//		for(i=1; i<=str1.length; i++) {
//			System.out.println("음식"+i+": "+str1[i-1]);
//		}
		
//		System.out.println("#str1 출력2");
//		for(String a:str1) {
//			System.out.print(a+"  ");
//		}
		
		System.out.println("#str2 출력1");
		for(i=0; i<str2.length; i++) {
			System.out.println("색깔"+(i+1)+": "+str2[i]);
		}
		
		System.out.println("#str2 출력2");
		for(String b:str2) {
			System.out.print(b+"  ");
		}
	}

}
