package day0626;


public class ArrNumsChange_02 {

	public static void main(String[] args) {

		int i, j;
		int[] arr = {4,6,7,33,22,44,1,78,8,9};
		
		System.out.println("원래 데이터");
		
		for(i=0; i<arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
		for(i=0; i<arr.length/2; i++) {
			int temp = arr[i];
			arr[i] = arr[arr.length-1-i];
			arr[arr.length-1-i] = temp;
		}
		
		System.out.println("순서 바꾼 후 데이터");
		
		for(i=0; i<arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
		for(i=0; i<arr.length-1; i++) {
			for(j=i+1; j<arr.length; j++) {
				if(arr[i]>arr[j]) {
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
		
		System.out.println("오름차순 정렬 후 데이터");
		for(i=0; i<arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();

	}

}
