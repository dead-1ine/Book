func addThree(_ num: Int) -> Int {
    return num + 3
}

Optional(2).map(addThree)   // Optional(5)
