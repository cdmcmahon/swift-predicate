extension Predicate {
    static func always() -> Predicate<Any> {
        return Predicate<Any> { _ in true }
    }
}
