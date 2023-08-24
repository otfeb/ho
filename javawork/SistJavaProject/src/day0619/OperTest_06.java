package day0619;

public class OperTest_06 {

	public static void main(String[] args) {

		int a, b;
		a = b = 5;
		// 단항일 경우는 앞에붙히나 뒤에붙히나 같다
		++a;
		++b;
		
		System.out.println("a="+a);
		System.out.println("b="+b);
		
		//수식에서 사용할떄는 전치, 후치의 결과값이 틀리다
		int m , n;
		m = n = 0;
		a = b = 5;  // a,b값 다시 5로 초기화
		
		m = a++;	// 후치일경우 먼저 대입 후 증가
		System.out.println("m="+m+" ,a="+a);
		
		n = ++b;
		System.out.println("n="+n+", b="+b);

	}

}
