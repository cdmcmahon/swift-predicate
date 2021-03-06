extension Predicate {
  public static func or(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
    return Predicate<T> { val in
      return first.test(val) || second.test(val)
      
    }
  }
  
  public func or(_ other: Predicate<T>) -> Predicate<T> {
    return Predicate.or(self, other)
  }
  
  public static func || (left: Predicate<T>, right: Predicate<T>) -> Predicate<T> {
    return left.or(right)
  }
}
