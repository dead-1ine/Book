// if 구문을 사용한 코드
for i in 0...3 {
    if i == 2 {
        print(i)
    } else {
        continue
    }
}

// guard 구문을 사용한 코드
for i in 0...3 {
    guard i == 2 else {
        continue
    }
    print(i)
}


