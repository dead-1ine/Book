// 세트는 포함 관계를 연산할 수 있는 메서드로 구현되어 있습니다.

let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)	// 새와 포유류의 합집합

print(새.isDisjoint(with: 포유류))		// 서로 배타적인지 - true
print(새.isSubset(of: 동물))			// 새가 동물의 부분집합인가요? - true
print(동물.isSuperset(of: 포유류))		// 동물은 포유류의 전체집합인가요? - true
print(동물.isSuperset(of: 새))		// 동물은 새의 전체집합인가요? - true

/*
	Set.isDisjoint(with:_)	: 배타적 관계 확인
	Set.isSubset(of:_)		: 부분집합 확인
	Set.isSuperset(of:_)	: 전체집합 확인
*/