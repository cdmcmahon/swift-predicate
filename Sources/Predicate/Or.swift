extension Predicate {
    static func or(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
        return Predicate<T> { val in
            return first.test(val) || second.test(val)
            
        }
    }
    
    func or(_ other: Predicate<T>) -> Predicate<T> {
        return Predicate<T> { val in
            return Predicate.or(self, other).test(val)
        }
    }
}
