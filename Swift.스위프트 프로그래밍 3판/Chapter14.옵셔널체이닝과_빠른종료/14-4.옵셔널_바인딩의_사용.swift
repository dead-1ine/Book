let yagom: Person = Person(name: "yagom")

var roomNumber: Int? = nil

if let yagomAddress: Address = yagom.addrress {
    if let yagomBuilding: Building = yagomAddress.building {
        if let yagomRoom: Room = yagomBuilding.room {
            roomNumber = yagomRoom.number
        }
    }
}

if let number: Int = roomNumber {
    print(number)
} else {
    print("Can not find room number")
}
