package day0622;

public class QuizForWhile_01 {
	
	public static void quiz1() {
		
		int i;
		for(i=1; i<=5; i++) {
			System.out.print(i+" ");
		}
		System.out.println("\n종료");
		
	}
	
	public static void quiz2() {
		
		int i;
		for(i=1; i<=10; i++) {
			if(i%3==0) {
				continue;
			}
			System.out.print(i+" ");
		}
		System.out.println("\n종료");
		
	}
	
	public static void quiz3() {
		
		int i;
		
		for(i=0; i<3; i++) {
			System.out.print("안녕 ");
		}
	
	}
	
	public static void quiz4() {
		
		int i;
		
		for(i=1; i<=10; i++) {
			if(i%2==1) {
				continue;
			}
			System.out.print(i+" ");
		}
	
	}
	
	public static void quiz5() {
		
		int i;
		int sum=0;
		
		for(i=1; i<=10; i++) {
			sum+=i;
		}
		System.out.println(sum);
	
	}
	

	public static void main(String[] args) {

		//quiz1();
		//quiz2();
		//quiz3();
		//quiz4();
		quiz5();

	}

}
