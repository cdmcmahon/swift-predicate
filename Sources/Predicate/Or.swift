extension Predicate {
    static func or(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
        Predicate<T> { val in first.test(val) || second.test(val) }
    }
    
    func or(_ other: Predicate<T>) -> Predicate<T> {
        Predicate<T> { val in
            Predicate.or(self, other).test(val)
        }
    }
}
