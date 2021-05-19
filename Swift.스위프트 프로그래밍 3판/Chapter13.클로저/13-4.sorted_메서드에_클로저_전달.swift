// backwards(first:second:) 함수 대신에 sorted(by:) 메서드의 전달인자로 클로저를 직접 전달합니다.
let reversed: [String] = names.sorted(by: { (first: String, second: String) -> Bool in
    return first > second
})
print(reversed)     // ["yagom", "wizplan", "jenny", "eric"]
