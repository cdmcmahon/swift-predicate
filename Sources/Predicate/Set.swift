extension Set {
    /// Returns a new set containing the elements of the set that satisfy the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for objects of type Element
    func filter(_ predicate: Predicate<Element>) -> Set<Element> {
        return self.filter(predicate.test)
    }
}
