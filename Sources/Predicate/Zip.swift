public func zip<A, B>(_ aPredicate: Predicate<A>, _ bPredicate: Predicate<B>) -> Predicate<(A, B)> {
    return Predicate { (a, b) in
        aPredicate.test(a) && bPredicate.test(b)
    }
}
