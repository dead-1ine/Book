struct Address {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?

    init(province: String, city: String, street: String) {
        self.province = province
        self.city = city
        self.street = street
    }

    func fullAddress() -> String? {
        var restAddress: String? = nil

        if let buildingInfo: Building = self.building {

            restAddress = buildingInfo.name

        } else if let detail = self {
            restAddress = detail
        }

        if let rest: String = restAddress {
            var fullAddress: String = self.province

            fullAddress += " " + self.city
            fullAddress += " " + self.street
            fullAddress += " " + rest

            return fullAddress
        } else {
            return nil
        }
    }

    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}

yagom.address?.fullAddress()?.isEmpty
yagom.address?.printAddress()
