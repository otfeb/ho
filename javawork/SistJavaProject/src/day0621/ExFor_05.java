package day0621;

public class ExFor_05 {

	public static void main(String[] args) {

		int i;
		
		for(i=1; i<=10; i++) {
			System.out.print(i);
		}
		System.out.println();
		
		for(i=10; i>=1;i--) {
			System.out.print(i+" ");
		}
		System.out.println();
		
		for(i=1; i<=50; i+=3) {
			System.out.print(i+" ");
		}
		System.out.println();
		
		for(i=1; i<=20; i++) {
			if(i%5==0) {
				continue;	
			}
			System.out.print(i+" ");
		}

	}

}
