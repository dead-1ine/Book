// 화살표 함수라는 새로운 함수가 추가되었으며, 기존의 function() {}도 그대ㅗㄹ 사용할 수 있습니다.
function add(x, y){
	return x + y;
}

const add2 = (x, y) => {
	return x + y;
};

const add3 = (x, y) => x + y;

const add4 = (x, y) => (x + y);

function not1(x) {
	return !x;
}

const not2 = x => !x;