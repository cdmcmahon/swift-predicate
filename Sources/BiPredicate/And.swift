extension BiPredicate {
  public static func and(_ first: BiPredicate<A, B>, _ second: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return BiPredicate { a, b in
      return first.test(a, b) && second.test(a, b)
    }
  }
  
  public func and(_ other: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return BiPredicate.and(self, other)
  }
  
  public static func && (left: BiPredicate<A, B>, right: BiPredicate<A, B>) -> BiPredicate<A, B> {
    return left.and(right)
  }
}
