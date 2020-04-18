extension BiPredicate {
  public static func never() -> BiPredicate<A, B> {
    return BiPredicate<A, B> { _, _ in false }
  }
}
