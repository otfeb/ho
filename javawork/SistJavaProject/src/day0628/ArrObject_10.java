package day0628;

class MyPersonInfo{
	private String nameString;
	private String bloodString;
	private int age;
	
	public MyPersonInfo(String name, String blood, int age) {
		this.nameString=name;
		this.bloodString=blood;
		this.age=age;
		
	}
	

	public static void title() {
		System.out.println("이름\t혈액형\t나이");
		System.out.println("------------------");
	}
	
	public void getInfo() {
		System.out.println(nameString+"\t"+bloodString+"형\t"+age+"세");
	}
}

/////////////////////////
public class ArrObject_10 {

	public static void main(String[] args) {

		MyPersonInfo[] my = {
				new MyPersonInfo("이효리", "B", 23),
				new MyPersonInfo("이상순", "A", 33),
				new MyPersonInfo("제니", "AB", 35)
		};
	
		System.out.println("총 "+my.length+"명의 정보 출력");
		MyPersonInfo.title();
		
		System.out.println("---------------------");
		
		MyPersonInfo.title();
		
		
		for(int i=0;i<my.length;i++) {
			my[i].getInfo();
		}

	}

}
