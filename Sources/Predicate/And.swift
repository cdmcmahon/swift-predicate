extension Predicate {
    func and(_ other: Predicate<T>) -> Predicate<T> {
        return Predicate { val in self.test(val) && other.test(val) }
    }
}
