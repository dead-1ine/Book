#include <stdio.h>

/* buy 함수 정의 */
void buy(int x){
	printf("%d만원짜리 차를 구입했습니다.\n", x);
}

/* buy 함수 호출 */
int main(void){
	int num;

	printf("1번째로 얼마짜리 차를 구입하시겠습니까?\n");
	scanf("%d", &num);
	
	buy(num);

	printf("2번째로 얼마짜리 차를 구입하시겠습니까?\n");
	scanf("%d", &num);

	buy(num);

	return 0;
}
