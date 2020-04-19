# swift-predicate

[![Swift 5.2](https://img.shields.io/badge/Swift-5.2-red.svg?style=flat)](https://swift.org/download/)
[![Build Status](https://img.shields.io/github/workflow/status/cdmcmahon/swift-predicate/Swift)](https://actions-badge.atrox.dev/cdmcmahon/swift-predicate/goto)

A library for treating predicates as first-class data types.

## Usage

Use  `swift-predicate` with [Swift Package Manager](https://swift.org/package-manager/), by adding it as a dependency to your `Package.swift` configuration:

```swift
dependencies: [
  .package(url: "https://github.com/cdmcmahon/swift-predicate.git", from: "0.1.0")
]
```

## About

Programs written in swift make frequent use of predicates. For example, they are commonly used to filter collections:

```swift
let evenNumbers = [1,2,3,4,5,6,7,8,9,10].filter { $0 % 2 == 0 }
```

However, while functions have inherent composability, they sometimes face ergonomic challenges in common Swift code. For example, to apply more complex filters, Swift programmers face the following options.

#### Option A: Multiple collection operations
```swift
// Not very performant!
let hasEvenCharacterCount = ["foo", "bar", "foobar"]
  .map { $0.count }
  .filter { $0 % 2 == 0 }
```

#### Option B: Single complex function
```swift
// Not very reusable!
let hasEvenCharacterCount = ["foo", "bar", "foobar"]
  .filter { $0.count % 2 == 0 }
```

#### Option C: Native function composition
```swift
// Good but not quite great!
let isEven = { $0 % 2  == 0 }
let hasEvenCharacterCount = ["foo", "bar", "foobar"]
  .filter { isEven($0.count) }
```

That's where a first class data type for predicates comes in. `Predicate` is a data type that wraps a predicate function and extends it with capabilities for composition. This library provides that type as well as extensions to many native swift types so that they can work well with a `Predicate`.

###  `Predicate`

```swift
let isEven = Predicate<Int> { $0 % 2 == 0 }
let isEmpty = Predicate<String> { $0.isEmpty }

struct User {
  var email: String
  var password: String
}

let hasSetUpProfile = Predicate<User> { user in
  return !user.email.isEmpty && !user.password.isEmpty
}
```

###  `Predicate` composition

`Predicate` is designed to be easily composable, so that larger, more complicated predicates can be created from small, simple, reusable ones. For example, `Predicate` provides nice ergonomics to modify a `Predicate` or combine a `Predicate<T>` with another of its same type:

```swift
let isEven = Predicate<Int> { $0 % 2 == 0 }
let isOdd = isEven.negate()
let isFoo = Predicate.equalTo("foo")
let isEvenAndGreaterThanTen = isEven.and { $0 > 10 }
let isOddOrGreaterThanTen = isOdd.or { $0 > 10 }
let isEvenXorGreaterThanTen = isEven.xor { $0 > 10 }
let allNumbers = isEven.or(isOdd)

// Bonus mode: isGreaterThanTen could be made reusable
```

These can also be written with static methods, if needed.

```swift
let allNumbers = Predicate.or(isEven, isOdd)
```

Additionally, `pullback` (a.k.a. `contramap`) can let us transform a predicates on `Int` types to `String` types, so long as we define a transformation from `String` to `Int`. In this case, we do that with character count:

```swift
let isEven = Predicate<Int> { $0 % 2 == 0 }
let hasEvenCharacterCount = ["foo", "bar", "foobar"]
  .filter(isEven.pullback { $0.count })
```

### Using `Predicate` with collections

The Predicate type is made to play well with collections.

## Credits

This library was created with heavy inspiration from [pointfree.co](http://www.pointfree.co). The abstraction of a function interface into a data type follows a pattern frequently used in their video series. ([Code samples here](https://github.com/pointfreeco/episode-code-samples).)

Inspiration was also taken from the [`Predicate` functional interface in `java.util.function`](https://docs.oracle.com/javase/8/docs/api/java/util/function/Predicate.html) and the ergonomics were often designed to mimic that library. 
