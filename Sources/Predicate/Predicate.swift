public struct Predicate<T> {
  public let test: (T) -> Bool
  
  public func callAsFunction(_ value: T) -> Bool {
    return self.test(value)
  }
}
