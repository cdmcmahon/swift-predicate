extension Predicate {
    func xor(_ other: Predicate<T>) -> Predicate<T> {
        return Predicate { val in
            self.or(other).test(val) && self.and(other).negate().test(val)
        }
    }
}
