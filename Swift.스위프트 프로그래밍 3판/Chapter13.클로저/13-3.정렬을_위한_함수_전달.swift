func backword(first: String, second: String) -> Bool {
    print("\(first) \(second) 비교중")
    return first > second
}

let reversed: [String] = names.sorted(by: backwords)
print(reversed)     // ["yagom", "wizplan", "jenny", "eric"]
