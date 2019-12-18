extension Predicate {
    func negate() -> Predicate<T> {
        return Predicate { t in !self.test(t) }
    }
}
