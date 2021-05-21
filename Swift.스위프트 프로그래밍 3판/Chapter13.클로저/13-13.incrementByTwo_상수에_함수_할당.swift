let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)

let first: Int = incrementByTwo()       // 2
let second: Int = incrementByTwo()      // 4
let third: Int = incrementByTwo()       // 6

