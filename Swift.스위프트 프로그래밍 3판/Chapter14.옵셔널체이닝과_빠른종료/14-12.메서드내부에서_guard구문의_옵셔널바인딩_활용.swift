func fullAddress() -> String? {
    var restAddress: String? = nil

    if let buildingInfo: Building = self.building {
        restAddress = buildingInfo.name
    
    } else if let detail = self.detailAddress {
        restAddress = detail
    }

    guard let rest: String = restAddress else {
        return nil
    }

    var fullAddress: String = self.province
    fullAddress += " " + self.city
    fullAddress += " " + self.street
    fullAddress += " " + rest

    return fullAddress
}
