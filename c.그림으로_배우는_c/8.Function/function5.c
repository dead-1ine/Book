#include <stdio.h>

void buy(int x, int y){
	printf("%d만원과 %d만원짜리 차를 구입했습니다. \n", x, y);
}

int main(void){
	int num1, num2;

	printf("얼마짜리 차를 구입했습니까? \n");
	scanf("%d", &num1);

	printf("얼마짜리 차를 구입했습니까? \n");
	scanf("%d", &num2);

	buy(num1, num2);

	return 0;
}
