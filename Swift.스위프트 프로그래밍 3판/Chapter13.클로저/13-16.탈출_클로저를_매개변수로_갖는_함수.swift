var completionHandlers: [() -> Void] = []

func someFunctiooonWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.apppend(completionHandler)
}
