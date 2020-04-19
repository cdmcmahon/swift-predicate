extension BiPredicate {
  public func negate() -> BiPredicate<A, B> {
    return BiPredicate { a, b in !self.test(a, b) }
  }
  
  public static prefix func ! (biPredicate: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return biPredicate.negate()
  }
}
