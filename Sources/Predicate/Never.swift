extension Predicate {
    static func never() -> Predicate<Any> {
        return Predicate<Any> { _ in false }
    }
}
