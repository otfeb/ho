package day0628;

class Score{
	
	private String stuName;
	private int java;
	private int oracle;
	private int html;
	
	static final String TITLE = "중간고사 시험결과";
	
	// 자동 setter,getter
	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
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

	public int getHtml() {
		return html;
	}

	public void setHtml(int html) {
		this.html = html;
	}
	
	// 합계메소드
	public int getTot() {
		int t = java+oracle+html;
		return t;
	}
	
	// 평균메소드
	public double getAvg() {
		double a = getTot()/3.0;
		return a;
	}
	
}

////////////////////////////////
public class ExObject_07 {

	public static void main(String[] args) {
		
		System.out.println("***중간고사 시험결과***");

		Score s1 = new Score();
		s1.setStuName("김지윤");
		s1.setJava(99);
		s1.setOracle(88);
		s1.setHtml(56);
		
		String stu1 = "학생명: "+s1.getStuName()+"\n자바점수: "+s1.getJava()+"\n오라클점수: "+s1.getOracle()+"\nHTML점수: "+s1.getHtml();

		System.out.println(stu1);
		System.out.println("합계점수: "+s1.getTot()+"점");
		System.out.println("평균점수: "+s1.getAvg()+"점");
		System.out.println("==========================");
		
		Score s2 = new Score();
		s2.setStuName("김동현");
		s2.setJava(79);
		s2.setOracle(68);
		s2.setHtml(76);
		
		String stu2 = "학생명: "+s2.getStuName()+"\n자바점수: "+s2.getJava()+"\n오라클점수: "+s2.getOracle()+"\nHTML점수: "+s2.getHtml();
		
		System.out.println(stu2);
		System.out.println("합계점수: "+s2.getTot()+"점");
		System.out.println("평균점수: "+s2.getAvg()+"점");
		


	}

}
