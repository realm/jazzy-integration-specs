//
//  Classes.swift
//  MiscJazzyFeatures
//
//  Created by JP Simard on 10/30/14.
//  Copyright (c) 2014 Realm. All rights reserved.
//

import Foundation

// MARK: Globals

/// SUPPORTED: documented global
let documentedGlobal = true

// SUPPORTED: undocumented global
let undocumentedGlobal = false

// MARK: Classes

/// SUPPORTED: implicitly internal top-level class
class ImplicitlyInternalTopLevelClass {
    /// SUPPORTED: Nested class
    class NestedClass {}
}

/// :nodoc:
/// Documented, but should be ignored
public class ExplicitlyNoDocClass {}

/// SUPPORTED: explicitly internal top-level class
internal class ExplicitlyInternalTopLevelClass {}

/// SUPPORTED: private top-level class
private class PrivateTopLevelClass {}

/// SUPPORTED: public top-level class
public class PublicTopLevelClass {}

/// SUPPORTED: @objc top-level class
@objc class ObjCTopLevelClass {}

/// SUPPORTED: top-level Objective-C subclasses
class TopLevelObjCSubclass: NSObject {}

/// SUPPORTED: top-level Swift subclasses
class TopLevelSwiftSubclass: ImplicitlyInternalTopLevelClass {}

// SUPPORTED: undocumented top-level class
class UndocumentedTopLevelClass {}

/// Class with initializers
class ClassWithInitializers {
    /// Empty init
    init() {}

    /// Parameterized init
    init(a: Void) {}

    // Undocumented init
    init(b: Void) {}
}

// MARK: Enums

/// SUPPORTED: documented enum
enum DocumentedEnum {
    /// SUPPORTED: documented enum element
    case DocumentedValue
}

// SUPPORTED: undocumented enum
enum UndocumentedEnum {
    // UNSUPPORTED: undocumented enum element
    case UndocumentedValue
}

/// Function (recommended documentation comment style)
///
/// - Parameters:
///     - aParameter: A parameter
///
/// - Returns: A result
public func functionA(aParameter: Bool) -> Bool {
    return true
}

/// Function (alternate documentation comment style)
///
/// - Parameter: aParameter: A parameter
public func functionB(aParameter: Bool) -> Bool {
    return true
}

/// Function (non‐standard documentation comment style)
///
/// - parameters:
///     - aParameter: A parameter
///
/// - returns: A result
public func functionC(aParameter: Bool) -> Bool {
    return true
}

/// Function (alternate non‐standard documentation comment style)
///
/// - parameter: aParameter: A parameter
public func functionD(aParameter: Bool) -> Bool {
    return true
}
