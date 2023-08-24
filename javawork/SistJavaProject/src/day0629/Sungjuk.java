package day0629;

/* 
 학생명 Java Oracle 총점 평균 평가
 * */
public class Sungjuk {

	private static String schoolName;
	private String name;
	private int java, oracle;
	
	
	
	public static String getSchoolName() {
		return schoolName;
	}
	public static void setSchoolName(String schoolName) {
		Sungjuk.schoolName = schoolName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJava() {
		return java;
	}
	public void setJava(int java) {
		this.java = java;
	}
	public int getOracle() {
		return oracle;
	}
	public void setOracle(int oracle) {
		this.oracle = oracle;
	}
	
	// 합계
	public int getTot() {
		int a = java+oracle;
		return a;
	}
	
	// 평균
	public double getAvg() {
		double d = getTot()/2.0;
		return d;
	}
	
	// 평가
	public String getPyungga() {
		if(getAvg()>=60) {
			return "합격";
		}
		else {
			return "불합격";
		}
	}
	
	
}
