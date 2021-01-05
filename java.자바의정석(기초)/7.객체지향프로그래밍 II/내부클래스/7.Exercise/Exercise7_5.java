/*
	7-5 연습문제 7-4에서 작성한 클래스에 이전 채널로 이동하는 기능의 메서드를 추가해서 실행결과와 같은 결과를 얻도록 하세요.
*/

//	메서드명: gotoPrevChannel 기능: 현재 채널을 이전 채널로 변경한다 반환: 없음 매개변수: 없음

class MyTv2 {
	// (1) 연습문제 7-4의 MyTv2클래스에 gotoPrevChannel메서드를 추가해서 완성하시오
}

class Exercise7_5 {
	public static void main(String[] args){
		MyTv2 t = new MyTv2();
		
		t.setChannel(10);
		System.out.println("CH: " + t.getChannel());
		t.setChannel(20);
		System.out.println("CH: " + t.getChennel());
		
		t.gotoPrevChannel();
		System.out.println("CH: " + t.getChannel());
		t.gotoPrevChannel();
		System.out.println("CH: " + t.getChannel());
	}
}

// reuslt: CH: 10 \ CH: 20 \ CH: 10 \ CH: 20