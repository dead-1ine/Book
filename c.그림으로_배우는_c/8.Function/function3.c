#include <stdio.h>

/* buy 함수 정의 */
void buy(int x){
	printf("%d만원짜리 차를 구입했습니다.\n", x);
}

/* buy 함수 호출 */
int main(void){

	buy(50);
	buy(60);

	return 0;
}
