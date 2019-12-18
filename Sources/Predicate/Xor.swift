extension Predicate {
    static func xor(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
        Predicate<T> { val in
            first.or(second).test(val) && first.and(second).negate().test(val)
        }
    }
    
    func xor(_ other: Predicate<T>) -> Predicate<T> {
        Predicate { val in
            Predicate.xor(self, other).test(val)
        }
    }
}
