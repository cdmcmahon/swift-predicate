extension Predicate {
  public func negate() -> Predicate<T> {
    return Predicate { t in !self.test(t) }
  }
  
  public static prefix func ! (predicate: Predicate<T>) -> Predicate<T> {
    return predicate.negate()
  }
}
