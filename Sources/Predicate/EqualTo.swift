extension Predicate {
  public static func equalTo<T: Equatable>(_ t: T) -> Predicate<T> {
    return Predicate<T> { val in val == t }
  }
}
