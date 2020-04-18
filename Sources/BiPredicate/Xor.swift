extension BiPredicate {
  public static func xor(_ first: BiPredicate<A, B>, _ second: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return BiPredicate { a, b in
      return first.or(second).test(a, b) && first.and(second).negate().test(a, b)
    }
  }
  
  public func xor(_ other: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return BiPredicate.xor(self, other)
  }
}
