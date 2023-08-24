package day0621;

public class ExForWhile_10 {
	
	public static void test1() {
		int i;
		int sum=0;
		
		for(i=1; i<=5; i++) {
			sum+=i;
		}
		System.out.println("총합계는: "+sum);
	}
	
	public static void test2() {
		int i;
		int sum=0;
		
		for(i=1; i<=10; i++) {
			if(i%2==1) {
				sum+=i;
			}
		}
		System.out.println("홀수의 합은: "+sum);
	}
	
	public static void test3() {
		int i = 1;
		int sum = 0;
		
		for(i=1; i<=100; i++) {
			sum+=i;
		}
		System.out.println("1부터 "+(i-1)+"까지의 합은"+sum);
	}
	
	public static void main(String[] args) {
		
		// ExForWhile_10.test1();
		// test2();
		test3();
		
	}

}
