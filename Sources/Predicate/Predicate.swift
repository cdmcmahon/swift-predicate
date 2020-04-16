public struct Predicate<T> {
  public let test: (T) -> Bool
  
  @available(swift 5.2)
  public func callAsFunction(_ value: T) -> Bool {
    return self.test(value)
  }
}
