// 후행 클로저의 사용 
let reversed: [String] = names.sorted() { (first: String, second: String) -> Bool in
    return first > second
}

// sorted(by:) 메서드의 소괄호까지 생략 가능
let reversed: [String] = names.sorted { (first: String, second: String) -> Bool in
    return first > second 
}
