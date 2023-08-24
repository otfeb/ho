package day0621;

public class ExFor_07 {

	public static void main(String[] args) {

		int i;
		for(i=5; i<=1; i++) {
			System.out.println(i);
		}
		
		for(i=1; i<=10; i++) {
			System.out.print(i+" ");
		}
		System.out.println("\n빠져나온후의 i값: "+i);
		
		int a=10;
		for(;a <=50;a+=5) {
			System.out.print(a+" ");
			System.out.println("\n빠져나온후의 a값: "+a);
		}
		
		for(i=0; i<5; i++) {
			System.out.print("Hello ");
		}
		
		System.out.println();
		
		for(i=2; i<=10; i+=2) {
			System.out.print(i+" ");
		}

	}

}
