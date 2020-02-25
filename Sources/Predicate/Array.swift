extension Array {
  /// Returns the first index in which an element of the collection satisfies the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func firstIndex(where predicate: Predicate<Element>) -> Int? {
    return self.firstIndex(where: predicate.test)
  }
  
  /// Returns the last element of the sequence that satisfies the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func last(where predicate: Predicate<Element>) -> Element? {
    return self.last(where: predicate.test)
  }
  
  /// Returns the index of the last element in the collection that matches the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func lastIndex(where predicate: Predicate<Element>) -> Int? {
    return self.lastIndex(where: predicate.test)
  }
  
  /// Returns a subsequence containing the initial elements until predicate returns false and skipping the remaining elements.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func prefix(while predicate: Predicate<Element>) -> ArraySlice<Element> {
    return self.prefix(while: predicate.test)
  }
  
  /// Returns a subsequence containing the final elements from the end of the array that consecutively satisfy the given predicate.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func suffix(while predicate: Predicate<Element>) -> ArraySlice<Element> {
    let index: Int = self.reversed().prefix(while: predicate.test).count
    return self.suffix(from: self.count - index)
  }
  
  /// Returns a subsequence by skipping elements while predicate returns true and returning the remaining elements.
  /// - Parameter predicate: A predicate object containing a test function for objects of type Element
  public func drop(while predicate: Predicate<Element>) -> ArraySlice<Element> {
    return self.drop(while: predicate.test)
  }
}



