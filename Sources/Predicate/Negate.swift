extension Predicate {
  public func negate() -> Predicate<T> {
    return Predicate { t in !self.test(t) }
  }
}
