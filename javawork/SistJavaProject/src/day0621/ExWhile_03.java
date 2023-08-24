package day0621;

public class ExWhile_03 {

	public static void main(String[] args) {

		int n=10;
		
		while(n>0) {

			System.out.print(n--+" ");
		}
		System.out.println();
		
		for(n=10; n>0; n--) {
			System.out.print(n+" ");
		}

	}

}
