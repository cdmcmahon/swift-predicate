extension Array {
    func filter(_ predicate: Predicate<Element>) -> Array<Element> {
        return self.filter(predicate.test)
    }
    
    func contains(where predicate: Predicate<Element>) -> Bool {
        return self.contains(where: predicate.test)
    }
    
    func allSatisfy(_ predicate: Predicate<Element>) -> Bool {
        return self.allSatisfy(predicate.test)
    }
    
    func first(where predicate: Predicate<Element>) -> Element? {
        return self.first(where: predicate.test)
    }
    
    func firstIndex(where predicate: Predicate<Element>) -> Int? {
        return self.firstIndex(where: predicate.test)
    }
    
    func last(where predicate: Predicate<Element>) -> Element? {
        return self.last(where: predicate.test)
    }
       
    func lastIndex(where predicate: Predicate<Element>) -> Int? {
        return self.lastIndex(where: predicate.test)
    }
    
    func prefix(while predicate: Predicate<Element>) -> ArraySlice<Element> {
        return self.prefix(while: predicate.test)
    }
    
    func suffix(while predicate: Predicate<Element>) -> ArraySlice<Element> {
        let index: Int = self.reversed().prefix(while: predicate.test).count
        return self.suffix(from: self.count - index)
    }
    
    func drop(while predicate: Predicate<Element>) -> ArraySlice<Element> {
        return self.drop(while: predicate.test)
    }
    
    func map(_ predicate: Predicate<Element>) -> [Bool] {
        return self.map(predicate.test)
    }
    
    func elementsEqual(with other: Array<Element>, by predicate: Predicate<Element>) -> Bool {
        return elementsEqual(other) { element1, element2 in
            predicate.test(element1) == predicate.test(element2)
        }
    }
}
