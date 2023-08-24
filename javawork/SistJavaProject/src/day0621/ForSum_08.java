package day0621;

public class ForSum_08 {

	public static void main(String[] args) {

		int sum=0;
		int i;
		
		for(i=1; i<=10; i++) {
			sum+=i;
		}
		System.out.println(sum);
		
		int tot=0;
		i=1;
		
		while(i<=10) {
			tot+=i;
			i++;
		}
		System.out.println(sum);
		
		int total = 0;
		int a = 1;
		
		for(a=1; a<=5000; a++) {
			total+=a;
		}
		
		System.out.println("1에서" +(a-1)+"까지의 합은"+total);

	}

}
