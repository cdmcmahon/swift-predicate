extension BiPredicate {
  public static func or(
    _ first: BiPredicate<A, B>,
    _ second: BiPredicate<A, B>
  ) -> BiPredicate<A, B> {
    return BiPredicate<A, B> { a, b in
      return first.test(a, b) || second.test(a, b)
    }
  }
  
  public func or(_ other: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return BiPredicate.or(self, other)
  }
}
