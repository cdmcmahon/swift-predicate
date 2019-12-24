extension Dictionary {
    /// Returns a new dictionary containing the key-value pairs of the dictionary that satisfy the given predicate.
    /// - Parameter predicate: A predicate object containing a test function for the a key value tuple
    public func filter(_ predicate: Predicate<(Key, Value)>) -> Dictionary<Key, Value> {
        return self.filter(predicate.test)
    }
}
