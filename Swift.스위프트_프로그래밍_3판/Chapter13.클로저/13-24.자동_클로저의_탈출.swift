var customersInLine: [String] = ["Test1", "Test2", "Test3"]

func returnProvider(_ customerProvider: @autoclosure @escaping () -> 
                    String) -> (() -> String) {
    return customerProvider
    }   

let customerProvider: () -> String = returnProvider(customersInLine.removeFirst())
print("Noew serving \(customerProvider())!") // "Now Serving Test1!"
