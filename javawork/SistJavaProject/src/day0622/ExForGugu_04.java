package day0622;

public class ExForGugu_04 {

	public static void main(String[] args) {

		int i;
		int j;
		
//		for(i=2; i<=9; i++) {
//			for(j=1; j<=9; j++) {
//				System.out.println("  "+i+"x"+j+"="+i*j);
//			}
//			System.out.println("===========");
//		}

		for(i=2; i<=9; i++) {
			for(j=1; j<=9; j++) {
				
				if(j==5) {
					break;
				}
				
				System.out.println(i+"x"+j+"="+i*j);
			}
			System.out.println();
		}
		
	}

}
