func hasElements(in array: [Int], match predicate: (Int) -> Bool) -> Bool {
    return (array.lazy.filter { predicate($0) }.isEmpy == false)
}
