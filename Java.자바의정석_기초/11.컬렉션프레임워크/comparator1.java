import java.util.*;

class comparator1 {
	public static void main(String[] args) {
		String[] strArr = {"cat", "Dog", "Lion", "tiger"};
		
		Arrays.sort(strArr);	// String의 Comparable구현에 의한 정렬
		System.out.println("기본 정렬 = " + Arrays.toString(strArr));
		
		Arrays.sort(strArr, String.CASE_INSENSITIVE_ORDER);	// 대소문자 구분안함
		System.out.println("대소문자 구분 X = " + Arrays.toString(strArr));
		
		Arrays.sort(strArr, new Descending());	// 역순 정렬
		System.out.println("역순 정렬 = " + Arrays.toString(strArr));
	}
}

class Descending implements Comparator {
	public int compare(Object o1, Object o2) {
		if( o1 instanceof Comparable && o2 instanceof Comparable) {
			Comparable c1 = (Comparable)o1;
			Comparable c2 = (Comparable)o2;
			
			return c1.compareTo(c2) * -1;	// -1을 곱해서 기본 정렬방식의 역으로 변경한다.
											// 또는 c2.compareTo(c1)와 같이 순서를 변경해도 된다.
		}
		return -1;
	}
}