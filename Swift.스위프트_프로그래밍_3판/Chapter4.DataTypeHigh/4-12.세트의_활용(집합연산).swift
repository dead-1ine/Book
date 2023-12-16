// 세트는 자신 내부의 값들이 모두 유일함을 보장하므로, 집합관계를 표현하고자 할 떄 유용하게 쓰인다.
// 두 세트의 교집합, 합집합 등을 연산하기에 매우 용이
// sorted() 메서드를 통하여 정렬된 배열 반환 가능

let englishClassStudents: Set<String> = ["john", "chulsoo", "yagom"]	// (4)
let koreanClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]	// (4)

// (4) 교집합 ["yagom", "chulsoo"]
let interectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)

// (4) 여집합의 합(배타적 논리합) {"john", "jenny", "hana", "minsoo"}
let symmetricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)

// (4) 합집합 {"minsoo", "jenny", "john", "yagom", "chulsoo", "hana"}
let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)

// (4) 차집합 {"john"}
let subtractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents)

print(unionSet.sorted())	// ["chulsoo", "hana", "jenny", "john", "minsoo", "yagom"]