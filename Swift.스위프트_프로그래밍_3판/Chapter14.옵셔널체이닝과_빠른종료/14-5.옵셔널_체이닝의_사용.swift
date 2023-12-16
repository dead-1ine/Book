let yagom: Person = Person(name: "yagom")

if let roomNumber: Int = yagom.address?.building?.room?.number {
    print(roomNumber)
} else {
    print("Can not find room number")
}
