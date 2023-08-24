package day0627;

public class Quiz_10 {
	
	// 맴버변수선언
	private String sangpum;	//상품명
	int su;		//수량
	int dan;	// 단가
	static String SHOPNAME = "롯데마트";	//상점
	
	// set (private만)
	public void setSangpum(String sangpum) {
		this.sangpum=sangpum;
	}
	
	// get
	public String getSangpum() {
		return sangpum;
	}
	
}
