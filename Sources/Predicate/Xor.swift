extension Predicate {
  public static func xor(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
    return Predicate { val in
      return first.or(second).test(val) && first.and(second).negate().test(val)
    }
  }
  
  public func xor(_ other: Predicate<T>) -> Predicate<T> {
    return Predicate { val in
      return Predicate.xor(self, other).test(val)
    }
  }
}
