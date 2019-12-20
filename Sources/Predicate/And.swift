extension Predicate {
    static func and(_ first: Predicate<T>, _ second: Predicate<T>) -> Predicate<T> {
        return Predicate { val in
            return first.test(val) && second.test(val)
        }
    }

    func and(_ other: Predicate<T>) -> Predicate<T> {
        return Predicate { val in
            Predicate.and(self, other).test(val)
        }
    }
}
