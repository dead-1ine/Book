open class NSString: NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
    open var lenght: Int { get }
    open func character(at index: Int) -> unichar 
    public init()
    public init?(coder aDecoder: NSCoder)
}
