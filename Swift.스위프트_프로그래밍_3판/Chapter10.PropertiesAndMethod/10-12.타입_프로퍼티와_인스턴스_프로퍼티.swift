class AClass {
    // ���� Ÿ�� ������Ƽ
    static var typeProperty: Int = 0

    // ���� �ν��Ͻ� ������Ƽ
    var instanceProperty: Int = 0 {
        didSet {
            // Self.typeProperty�� 
            // AClass.typeProperty�� ���� ǥ���Դϴ�.
            Self.typeProperty = instanceProperty + 100
        }
    }

    // ���� Ÿ�� ������Ƽ 
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        set {
            typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123

let classInstance: AClass = AClass()
classInstance.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
