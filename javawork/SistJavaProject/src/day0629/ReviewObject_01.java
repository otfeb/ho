package day0629;

class MyTv{
	

	private String che;		// 채널
	private String vol;		// 볼륨
	
	public String getChe() {
		return che;
	}
	public void setChe(String che) {
		this.che = che;
	}
	public String getVol() {
		return vol;
	}
	public void setVol(String vol) {
		this.vol = vol;
	}
	
	
}

/////////////////////////
public class ReviewObject_01 {
	

	public static void main(String[] args) {
		
		MyTv mt1 = new MyTv();
		mt1.setChe("ebs");
		mt1.setVol("15데시벨");
		
		MyTv mt2 = new MyTv();
		mt2.setChe("tbn");
		mt2.setVol("18데시벨");
			
		System.out.println("**tv시청목록**");
		System.out.println();
		System.out.println(mt1.getChe()+"채널을 시청합니다");
		System.out.println("볼륨은 "+mt1.getVol()+" 입니다");
		System.out.println("---------------------");
		System.out.println(mt2.getChe()+"채널을 시청합니다");
		System.out.println("볼륨은 "+mt2.getVol()+" 입니다");
		

	}

}
