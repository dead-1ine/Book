indirect enum ArithmeticExpression {
	case number(Int)
	case addition(ArithmeticExpression, ArithmeticExpression)
	case multiplication(ArithmeticExpression, ArithmeticExpression)
}