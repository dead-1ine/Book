var customersInLine: [String] = ["YoangWha", "SangYong", "SungHun", "HaMi"]

func serveCustomer(_ customerProvider: () -> String) {
    print("New Serving \(customerProvider())!")
}

serverCustomer( { customersInLine.removeFirst() } )
