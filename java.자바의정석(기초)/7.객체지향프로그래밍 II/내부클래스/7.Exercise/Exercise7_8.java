/*
	7-8 다음과 같은 실행결과를 얻도록 1~4의 코드를 완성하시오.
*/
	
class Outer {
	int value = 10;
	
	class Inner {
		int value = 20;
		
		void method1() {
			int value = 30;
			
			System.out.println( (1) );
			System.out.println( (2) );
			System.out.println( (3) );
	
		}
	}
}

class Exercise7_8 {
	public static void main(String[] args) {
		// (4) 코드를 완성
	
		inner.method1();
	}
}

// result : 30 \ 20 \ 10