package day0622;

public class GaroGugu {

	public static void main(String[] args) {

		int i;
		int j;
		
		for(j=2;j<=9;j++) {
			System.out.print("["+j+"단]\t");
		}
		
		System.out.println();
		System.out.println();
		
		for(i=1; i<=9; i++) {
			for(j=2; j<=9; j++) {	// 단
				System.out.print(j+"x"+i+"="+i*j+"\t");
			}
			System.out.println();
		}

	}

}
