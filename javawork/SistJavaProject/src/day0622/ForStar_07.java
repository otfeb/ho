package day0622;

public class ForStar_07 {

	public static void main(String[] args) {

		int i;
		int j;
		
		System.out.println("[다중 For문으로 별모양 찍기]");
		System.out.println();
		
//		for(i=5; i>=1; i--) {
//			for(j=1; j<=5; j++) {
//				if(j>=i) {
//					System.out.print("*");
//				}
//				else {
//					System.out.print(" ");
//				}
//			}
//			System.out.println();
//		}
		
		for(i=5; i>=1; i--) {			
			for(j=1; j<=5; j++) {
				System.out.print(" ");
				if(j>=i) {
				System.out.print("*");
				}
				else {
					continue;
				}
			}
			System.out.println();
		}
		
		
		for(i=1; i<=2; i++) {
			for(j=1; j<=5; j++) {
				System.out.print(" ");
				if(i==1 && j==1 || i==1 && j==5) {
					System.out.print(" ");
					continue;
				}
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
