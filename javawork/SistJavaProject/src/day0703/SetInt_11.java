package day0703;

import java.util.HashSet;

public class SetInt_11 {

	public static void main(String[] args) {
		
		HashSet<Integer> set1 = new HashSet<Integer>();
		
		set1.add(11);
		set1.add(22);
		set1.add(33);
		set1.add(44);
		set1.add(55);
		
		System.out.println("갯수: "+set1.size());
		
		System.out.println("출력3_for");
		Object[] ob = set1.toArray();
		for(int i=0;i<ob.length;i++) {
			System.out.printf("%5d",ob[i]);
		}

	}

}
