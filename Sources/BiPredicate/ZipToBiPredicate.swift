import Predicate

public func zipToBiPredicate<A, B>(_ aPredicate: Predicate<A>, _ bPredicate: Predicate<B>) -> BiPredicate<A, B> {
  return BiPredicate { a, b in
    aPredicate.test(a) && bPredicate.test(b)
  }
}
