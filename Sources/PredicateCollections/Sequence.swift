import Predicate

extension Sequence {
  /// Returns an array containing, in order, the elements of the sequence that satisfy the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func filter(_ predicate: Predicate<Self.Element>) -> [Self.Element] {
    return self.filter(predicate.test)
  }
  
  /// Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func contains(where predicate: Predicate<Self.Element>) -> Bool {
    return self.contains(where: predicate.test)
  }
  
  /// Returns a Boolean value indicating whether every element of a sequence satisfies a given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func allSatisfy(_ predicate: Predicate<Self.Element>) -> Bool {
    return self.allSatisfy(predicate.test)
  }
  
  /// Returns the first element of the sequence that satisfies the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func first(where predicate: Predicate<Self.Element>) -> Self.Element? {
    return self.first(where: predicate.test)
  }
  
  /// Returns a sequence containing the initial, consecutive elements that satisfy the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func prefix(while predicate: Predicate<Self.Element>) -> [Self.Element] {
    return self.prefix(while: predicate.test)
  }
  
  /// Returns a sequence by skipping the initial, consecutive elements that satisfy the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func drop(while predicate: Predicate<Self.Element>) -> DropWhileSequence<Self> {
    return self.drop(while: predicate.test)
  }
  
  /// Returns an array containing the results of mapping the given predicate over the sequence’s elements.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func map(_ predicate: Predicate<Self.Element>) -> [Bool] {
    return self.map(predicate.test)
  }
  
  /// Returns the number of items in the array matching the predicate
  /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
  public func count(where predicate: Predicate<Self.Element>) -> Int {
    return self.reduce(0) { result, element in
      return result + (predicate.test(element) ? 1 : 0)
    }
  }
}
