extension Predicate {
    func pullback<A>(_ f: @escaping (A) -> T) -> Predicate<A> {
        return Predicate<A> { a in
            return self.test(f(a))
        }
    }
}
