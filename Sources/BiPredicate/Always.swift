extension BiPredicate {
  public static func always() -> BiPredicate<A, B> {
    return BiPredicate<A, B> { _, _ in true }
  }
}
