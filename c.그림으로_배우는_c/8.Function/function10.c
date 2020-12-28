#include <stdio.h>

int a = 0; // 전역 변수 

void func(void){

	int c = 2;

	printf("func 함수에서는 변수 a와 c를 사용할 수 있습니다. \n");
	printf("변수 a값은 %d입니다. \n", a); // 전역 변수 사용 가능

	// printf("변수 b값은 %d입니다. \n", b); // 다른 함수 안의 지역 변수는 사용할 수 없음

	printf("변수 c값은 %d입니다. \n", c);
}

int main(void){
	
	int b = 1;

	printf("main 함수에서는 변수 a와 v를 사용할 수 있습니다. \n");
	printf("변수 a값은 %d입니다. \n", a);
	printf("변수 b값은 %d입니다. \n", b);
	// printf("변수 c값은 %d입니다. \n", c); // 다른 함수 안의 지역 변수는 사용할 수 없음

	func();

	return 0;
}

