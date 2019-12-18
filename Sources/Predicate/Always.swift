extension Predicate {
    static func always() -> Predicate<T> {
        return Predicate<T> { _ in true }
    }
}
