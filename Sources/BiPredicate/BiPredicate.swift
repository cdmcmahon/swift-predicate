public typealias BiPredicateFunction<A, B> = (A, B) -> Bool

public struct BiPredicate<A, B> {
  public let test: BiPredicateFunction<A, B>
  
  public func callAsFunction(_ a: A, _ b: B) -> Bool {
    return self.test(a, b)
  }
}
