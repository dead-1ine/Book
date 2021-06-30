/**
	7-2 연습문제 7-1의 SutdaDeck클래스에 다음에 정의된 새로운 메서드를 추가하고 테스트하시오.
	
	- 메서드명
	- 기능
	- 반환타입
	- 매개변수
	
	1. shuffle
		배열 cards에 담긴 카드의 위치를 뒤섞는다.(Math.random()사용)
		없음
		없음
	2. pick 
		배열 cards에서 지정된 위치의 SutdaCard를 반환한다.
		SutdaCard
		int index - 위치
	3. pick
		배열 cards에서 임의의 위치에 SutdaCard를 반환한다.(Math.random()사용)
		SutdaCard
		없음
**/

class SutdaDeck {
	final int CARD_NUM = 20;
	SudaCard[] cards = new SutdaCard[CARD_NUM];
	
	SutdaDeck() {
		// 연습문제 7-1의 답
	}
	
	// (1) 위에 정의된 세 개의 메서드를 작성하시오.
	
}	// SutdaDeck

class SutdaCard {
	int num;
	boolean isKwang;
	
	SutdaCard() {
		this(1, true);
	}
		
	SutdaCard(int num, boolean isKwang) {
		this.num = num;
		this.isKwang = isKwang;
	}
	
	public String toString() {
		return num + (isKwang ? "K" : "");
	}
}

class Exercise7_2 {
	public static void main(String[] args){
		SutdaDeck deck = new SutdaDeck();
		
		System.out.println(deck.pick(0));
		System.out.println(deck.pick(1));
		deck.shuffle();
		
		for(int i = 0; i < deck.cards.length; i++) {
			System.out.println(deck.cards[i] + ",");
			
		System.out.println();
		System.out.println(deck.pick(0));
		}
	}
}

/* result : 1K
			7
			2,6,10,1K,1,7,3,10,5,7,8,5,1,2,9,6,9,4,8K,4,3K,
			2
*/