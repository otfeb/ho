package day0621;

public class WhileTest {

	public static void main(String[] args) {

		int n = 0;
		
		while(n<10) {
			n++;
			System.out.printf("%4d",n);
		}
		System.out.println();
		
		n = 0;
		while(n<10) {
			System.out.printf("%4d",++n);
		}
		System.out.println();
		
		n=0;
		while(true) {
			System.out.printf("%4d",++n);
			if(n==10) {
				break;
			}
			
		}
		System.out.println();
	}

}
