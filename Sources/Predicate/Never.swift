extension Predicate {
    public static func never() -> Predicate<T> {
        return Predicate<T> { _ in false }
    }
}
