// TIP 컬렉션에서 임의의 추출과 뒤섞기

/*
	randomElement() : 임의의 요소 추출
	shuffle() 		: 임의로 뒤섞기
	shuffled()		: 자신의 요소를 그대로 둔 채 새로운 컬렉션에 임의의 순서로 섞어 반환
*/
	
var array: [Int] = [0, 1, 2, 3, 4]
var set: Set<Int> = [0, 1, 2, 3, 4]
var dictionary: [String: Int] = ["a": 1, "b": 2, "c": 3]
var string: String = "String"

print(array.randomElement())		// 임의의 요소
print(array.shuffled())				// 뒤죽박죽된 정렬
print(array)
array.shuffle()						// 뒤죽박죽된 배열
print(array)

print(set.shuffled())				// 세트를 뒤섞으면 배열로 반환해줍니다.
// set.shuffle()					// Error! 세트는 순서가 없기 때문에 스스로 뒤섞을 수 없습니다.
print(dictionary.shuffled())		// 딕셔너리를 뒤섞으면 (키, 값)이 쌍으로 이룬 튜플의 배열로 반환해줍니다.
print(string.shuffled())			// String도 컬렉션입니다.