var sum = function sum(a, b) {	// 함수 선언문은 전체를 호이스팅합니다.
	return a + b;
};
var multiply;				// 변수는 선언부만 끌어올립니다.

console.log(sum(1, 2));
console.log(multiply(3, 4));

multiply = function(a, b) {
	return a * b;
}



