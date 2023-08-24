package day0619;

public class OperTest_09 {

	public static void main(String[] args) {

		int a=5, b=3, c=5;
		
		System.out.println(a>b); // t
		System.out.println(a==b); // f
		System.out.println(!(a==b)); // t
		System.out.println(a!=b); // t
		
		System.out.println(a>b&&b>c); // f
		System.out.println(a>b||b>c); // t

	}

}
