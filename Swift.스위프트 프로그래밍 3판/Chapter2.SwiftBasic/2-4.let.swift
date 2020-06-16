// 2.4.2 상수
// let [상수명]: [데이터 타입] = [값]

let name: String = "yagom"
var age: Int = 100
var job = "iOS Programmer"
let height = 181.5
age = 99
job = "writer"               // 값을 변경할 때는 기존과 동일한 타입의 값을 할당해야 함
name = "야곰"                 // 상수로 선언된 값은 변경할 수 없음. 오류가 발생

print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 키는 \(height)입니다.")

