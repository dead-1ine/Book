class SomeClass {
    deinit {
        print("Instance will be deallocated immediately")
    }
}

var instance: SomeClass? = SomeClass()
instance = nil // Instance will be deallocated immediately
