public typealias PredicateFunction<T> = (T) -> Bool

public struct Predicate<T> {
  public let test: PredicateFunction<T>
  
  public func callAsFunction(_ value: T) -> Bool {
    return self.test(value)
  }
}
