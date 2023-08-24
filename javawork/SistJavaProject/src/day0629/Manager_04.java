package day0629;

public class Manager_04 extends Employee_04{

	String buseo;
	public Manager_04(String nema, int sal,String b) {
		super(nema, sal);
		buseo=b;
	}
	@Override
	public String getEmp() {
		return super.getEmp()+","+buseo;

	
	
	}
}
