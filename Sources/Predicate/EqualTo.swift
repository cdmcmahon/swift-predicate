extension Predicate {
    static func equalTo<T: Equatable>(_ t: T) -> Predicate<T> {
        return Predicate<T> { val in val == t }
    }
}
