package day0620;

public class CharAt_14 {

	public static void main(String[] args) {

		String juminNum = "971234-2313458";
		
		char seventh = juminNum.charAt(7);
		
		//System.out.println(seventh);
		if(seventh=='1') {
			System.out.println("남자입니다");
		}
		else if(seventh=='2') {
			System.out.println("여자입니다");
		}
		else if(seventh=='3') {
			System.out.println("2000년 이후 남자입니다");
		}
		else if(seventh=='4') {
			System.out.println("2000년 이후 여자입니다");
		}
		else {
			System.out.println("유효하지 않은 주민번호입니다");
		}

	}

}
