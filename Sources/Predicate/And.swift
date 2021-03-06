extension Predicate {
  public static func and(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
    return Predicate { val in
      return first.test(val) && second.test(val)
    }
  }
  
  public func and(_ other: Predicate<T>) -> Predicate<T> {
    return Predicate.and(self, other)
  }
  
  public static func && (left: Predicate<T>, right: Predicate<T>) -> Predicate<T> {
    return left.and(right)
  }
}
