package day0623;

public class ArrMaxMin_10 {

	public static void main(String[] args) {

		int[] data = {5,120,44,66,23,65,88,99,158};
		
		System.out.println("data의 길이: "+data.length);
		
		int i;
		int max=data[0];
		
		for(i=1; i<=data.length; i++) {
			if(max<data[i-1]) {
				max = data[i-1];
			}
		}
		
		int min=data[0];
		
		for(i=1; i<=data.length; i++) {
			if(min>data[i-1]) {
				min = data[i-1];
			}
		}
		
		System.out.println("최대값은: "+max);
		System.out.println("최소값은: "+min);

	}

}
