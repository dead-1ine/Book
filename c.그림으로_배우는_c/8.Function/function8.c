#include <stdio.h>

int max(int x, int y){

	if(x > y){
		return x;
	} else {
		return y;
	}
}

int main(void){

	int num1, num2, ans;

	printf("1번째 정수를 입력하세요.\n");
	scanf("%d", &num1);

	printf("2번째 정수를 입력하세요. \n");
	scanf("%d", &num2);

	ans = max(num1, num2);
	
	printf("최댓값은 %d입니다. \n", ans);
	
	return 0;
}
