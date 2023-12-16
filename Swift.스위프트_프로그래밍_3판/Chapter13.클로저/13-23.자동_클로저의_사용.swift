var customersInLine: [String] = ["YoangWha", "SangYong", "SungHun", "HaMi"]

func serveCustomer(_ customerProvider: @autoclosure () -> String) {
    print("Now Serving \(cusomterProvider())!")
}

serveCustomer(customersInLine.removeFirst())
