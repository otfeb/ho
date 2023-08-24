package day0621;

public class QuizFor_09 {

	public static void main(String[] args) {

		int i;
		
//		for(i=1; i<=10; i++) {
//			if(i%3==0) {
//				continue;
//			}
//			System.out.print(i+" ");
//		}
//		System.out.println();
//		
//		for(i=1; i<=10; i++) {
//			if(i%2==0) {
//				continue;
//			}
//			System.out.print(i+" ");
//		}
//		System.out.println();
//		
//		int sum=0;
//		int esum=0;
		
//		for(i=1; i<=100; i++) {
//			if(i%2==0) {
//				continue;
//			}
//			else {
//				esum+=i;
//			}
//			sum+=i;
//		}
//		System.out.println("홀수의 합: "+sum);
//		System.out.println("짝수의 합: "+esum);
//		
//		System.out.println("=====================");
		
		int osum=0;
		int esum=0;
		i=1;
		
		while(true) {
			if(i%2==0) {
				osum+=i;
			}
			else {
				esum+=i;
			}
			i++;
			if(i>100) {
				break;
			}
		}
		System.out.println("짝수숫자의 합: "+osum);
		System.out.println("홀수숫자의 합: "+esum);

	}

}
