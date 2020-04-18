extension BiPredicate {
  public func negate() -> BiPredicate<A, B> {
    return BiPredicate { a, b in !self.test(a, b) }
  }
}
