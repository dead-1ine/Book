import java.awt.*;
import java.beans.*;

/*
	7-9 아래의 EventHandler를 익명클래스로 변경하시오
*/
	
class Exercise7_9 {
	public static void main(String[] args){
		Frame f = new Frame();
		f.addWindowListener(new EventHandler());
	}
}

class EventHandler extends WindowAdapter {
	public void windowClosing(WindowEvent e) {
		e.getWindow().setVisible(false);
		e.getWindow().dispose();
		System.exit(0);
	}
}