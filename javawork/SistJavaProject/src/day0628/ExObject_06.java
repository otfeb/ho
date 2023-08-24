package day0628;

class Member{
	
	private String stuname;		// 학생명
	private String gender;		// 성별
	private String addr;		// 주소
	
	static String ban = "쌍용 자바 7반";
	static int cnt=0;
	
	// 수정용 메소드
	public void setMembers(String name,String gd,String addr) {
		this.stuname=name;
		this.gender=gd;
		this.addr=addr;
	}
	
	// 출력용 메소드
	public void getMembers() {
		cnt++;
		
		System.out.println("**학생"+cnt+"정보**");
		System.out.println("학생명: "+stuname);
		System.out.println("소속학급: "+Member.ban);
		System.out.println("성별: "+gender);
		System.out.println("주소: "+addr);
		System.out.println("---------------------");
	}
	
}

////////////////////////////
public class ExObject_06 {

	public static void main(String[] args) {

		Member m1 = new Member();
		m1.setMembers("최성현", "남자", "서울시 강동구");
		m1.getMembers();
		
		Member m2 = new Member();
		m2.setMembers("윤호석","남자" ,"서울시 강서구");
		m2.getMembers();

	}

}
