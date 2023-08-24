package day0626;

public class ReviewArr_08 {

	public static void main(String[] args) {

		String[] names = {"영환이","수환이","동환이","성환이"};
		
		int i;
		
		for(i=0;i<names.length;i++) {
			System.out.println(i+"번지: "+names[i]);
		}
		
		System.out.println();
		
		int[] nums = {2,4,5,7,8};
		
		for(i=0;i<nums.length;i++) {
			System.out.print(nums[i]+" ");
		}
		
		System.out.println();
		
		String[] flowers = {"flow1","flow2","flow3","flow4","flow5"};
		
		for(i=0;i<flowers.length;i++) {
			System.out.print(flowers[i]+" ");
		}
		
		System.out.println();
		
		String[] colors = {"red","blue","yello","green","black"};
		
		for(i=0;i<colors.length;i++) {
			System.out.print(colors[i]+" ");
		}
		
		System.out.println();
	}

}
