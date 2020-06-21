enum PastaTaste: CaseIterable {
	case cream, tamato
}

enum PizzaDough: CaseIterable {
	case cheeseCrust, thin, original
}

enum PizzaTopping: CaseIterable {
	case peperoni, chese, bacon
}

enum MainDish: CaseIterable {
	case pasta(taste: PastaTaste)
	case pizza(dough: PizzaDough, topping: PizzaTopping)
	case chicken(withSauce: Bool)
	case rice
	
	static var allCases: [MainDish] {
		return PastaTaste.allCases.map(MainDish.pasta) + PizzaDough.allCases.reduce([]) { result, dough) -> [MainDish] in result + PizzaOTopping.allCases.map { (topping) -> MainDish in MainDish.pizza(dough: dough, topping: topping) }
			
			+ [true, false].map(MainDish.chicken)
			+ [MainDish.rice]
	}
}

print(MainDish.allCases.count)
print(MainDish.allCases)