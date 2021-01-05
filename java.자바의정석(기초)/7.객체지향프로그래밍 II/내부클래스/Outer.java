// 48. 내부 클래스의 제어자와 접근성 3
class Outer {
	private int outerIv = 0;
	static int outerCv = 0;
	
	class InstanceInner {
		int iiv = outerIv;
		int iiv2 = outerCv;
	}
	
	static class StaticInner {
// 스태틱 클래스는 외부 클래스의 인스턴스멤버에 접근할 수 없다.
//		int siv = outerIv;
		static int scv = outerCv;
	}
	
	void myMethod() {
		int lv = 0;
		final int LV = 0;
		
		class LocalInner {
			int liv = outerIv;
			int liv2 = outerCv;
			
// 외부 클래스의 지역변수는 final이 붙은 변수(상수)만 가능하다
//			int liv3 = lv;		// Error! (jdk1.8부터는 에러 아님)
			int liv4 = LV; 		// OK.
		}
	}
}