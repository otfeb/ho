package day0623;

public class StringMethod_08 {

	public static void main(String[] args) {

		String str1 = "Have a Nice Day";
		String str2 = "     Happy Day      ";
		
		System.out.println("str2의 길이: "+str2.length());
		System.out.println("str2의 앞뒤 공백제거후 길이: "+str2.trim().length());
		System.out.println("*"+str2+"*");
		System.out.println("*"+str2.trim()+"*");
		
		System.out.println("str1에서 H의 인덱스: "+str1.indexOf('H'));
		System.out.println("str1에서 Nice만 출력: "+str1.substring(7,11));
		
		System.out.println("문자열 일부를 변경");
		//System.out.println(str1.replace('a', '!'));
		System.out.println(str1.replace("Nice", "Good"));
		
		// 숫자를 문자로 변환
		String b1 = 12.5+"";
		String b2 = 100+"";
		
		String b3 = String.valueOf(100);
		System.out.println(b1+" "+b2+" "+b3);
		
		String str3 = "red, blue, green, gray, white";
		System.out.println(str3);
		
		System.out.println(",로 분리하여 출력하기");
		
		String[] arr=str3.split(",");
		System.out.println(arr.length);
		
		for(String color:arr) {
			System.out.println(color);
		}
		
	}

}
