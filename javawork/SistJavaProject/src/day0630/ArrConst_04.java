package day0630;

abstract class Game{
	abstract void play();
	abstract void stop();
}
////////////////////////////////
class SungHyeon extends Game{

	@Override
	void play() {
		System.out.println("성현이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("성현이가 게임을 종료합니다");
	}
	
}
///////////////////////////////
class SooYeong extends Game{

	@Override
	void play() {
		System.out.println("순영이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("순영이가 게임을 종료합니다");
	}
	
}
///////////////////////////////
class SunBum extends Game{

	@Override
	void play() {
		System.out.println("성범이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("성범이가 게임을 종료합니다");
	}
	
}
///////////////////////////////
public class ArrConst_04 {

	public static void main(String[] args) {
		
		
		Game[] games = {new SungHyeon(),new SooYeong(),new SunBum()};
		
		for(int i=0; i<games.length; i++) {
			games[i].play();
		}
		System.out.println("--------------------");
		for(int i=2; i>=0; i--) {
			games[i].stop();
		}
		

	}

}
