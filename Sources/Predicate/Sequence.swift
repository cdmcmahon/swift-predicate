extension Sequence {
    /// Returns an array containing, in order, the elements of the sequence that satisfy the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func filter(_ predicate: Predicate<Self.Element>) -> [Self.Element] {
        return self.filter(predicate.test)
    }
    
    /// Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func contains(where predicate: Predicate<Self.Element>) -> Bool {
        return self.contains(where: predicate.test)
    }
    
    /// Returns a Boolean value indicating whether every element of a sequence satisfies a given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func allSatisfy(_ predicate: Predicate<Self.Element>) -> Bool {
        return self.allSatisfy(predicate.test)
    }
    
    /// Returns the first element of the sequence that satisfies the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func first(where predicate: Predicate<Self.Element>) -> Self.Element? {
        return self.first(where: predicate.test)
    }
    
    /// Returns a sequence containing the initial, consecutive elements that satisfy the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func prefix(while predicate: Predicate<Self.Element>) -> [Self.Element] {
        return self.prefix(while: predicate.test)
    }
    
    /// Returns a sequence by skipping the initial, consecutive elements that satisfy the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func drop(while predicate: Predicate<Self.Element>) -> DropWhileSequence<Self> {
        return self.drop(while: predicate.test)
    }
    
    /// Returns an array containing the results of mapping the given predicate over the sequence’s elements.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Self.Element
    func map(_ predicate: Predicate<Self.Element>) -> [Bool] {
        return self.map(predicate.test)
    }
}
