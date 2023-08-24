package day0623;

public class ArrayTest_04 {

	public static void main(String[] args) {

		int[] arr1,arr2;	// 배열 선언
		arr1 = new int[3];	// 메모리할당
		arr2 = new int[] {10,20,30,40,50};	// 할당만 되도 값은 0으로 초기화(string은 null)
		
		arr1[0]=10;
		arr1[1]=5;
		arr1[2]=20;
		
		System.out.println(arr1.length);
		System.out.println(arr2.length);
		
		System.out.println("for문으로 arr1출력");
		System.out.println();
		for(int i=0;i<arr1.length;i++) {
			System.out.println(arr1[i]);
		}
		
		for(int i=0; i<arr2.length; i++) {
			System.out.println(arr2[i]);
		}
		
		System.out.println("for each문 사용_arr1");
		for(int a1:arr1) {
			System.out.println(a1);
		}
		
		System.out.println("for each문 사용_arr2");
		for(int a2:arr2) {
			System.out.println(a2);
		}

	}

}
