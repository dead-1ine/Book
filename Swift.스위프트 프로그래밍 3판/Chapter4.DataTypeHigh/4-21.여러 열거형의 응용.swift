enum PastaTaste {
	case cream, tomato
}

enum PizzaDough {
	case cheeseCrust, thin, original
}

enum PizzaTopping {
	case peperoni, chese, bacon
}

enum MainDish {
	case pasta(taste: PastaTaste)
	case pizza(dough: PizzaDough, topping: PizzaTopping)
	case chicken(withSauce: Bool)
	case rice
}

var dinner: MainDish = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)