extension BiPredicate {
  public func pullback<X, Y>(
    _ f: @escaping (X) -> A,
    _ g: @escaping (Y) -> B
  ) -> BiPredicate<X, Y> {
    return BiPredicate<X, Y> { x, y in
      return self.test(f(x), g(y))
    }
  }
}

