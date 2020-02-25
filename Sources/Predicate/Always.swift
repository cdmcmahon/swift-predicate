extension Predicate {
  public static func always() -> Predicate<T> {
    return Predicate<T> { _ in true }
  }
}
