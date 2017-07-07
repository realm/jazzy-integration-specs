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
open class ExplicitlyNoDocClass {}

/// SUPPORTED: explicitly internal top-level class
internal class ExplicitlyInternalTopLevelClass {}

/// SUPPORTED: private top-level class
private class PrivateTopLevelClass {}

/// SUPPORTED: public top-level class
open class PublicTopLevelClass {}

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
    case documentedValue
}

// SUPPORTED: undocumented enum
enum UndocumentedEnum {
    // UNSUPPORTED: undocumented enum element
    case undocumentedValue
}

// MARK: Extensions

/// Extension of a top-level class in this module
extension ClassWithInitializers {
    /// Method from an extension
    func ee() {}
}

/// Extension of a nested class in this module
extension ImplicitlyInternalTopLevelClass.NestedClass {
    /// Method from an extension
    func ee() {}
}

/// Extension of top-level external class
extension NSObject {
    /// Method from an extension
    func ee() {}
}

/// Extension of a nested external class
extension String.CharacterView {
    /// Method from an extension
    func ee() {}
}

/// Class with multiple nesting levels
class TopLevelClass {
    /// Top level method
    func tt() {}

    class NestedLevel1 {
        /// Nested method
        func nn1() {}

        class NestedLevel2 {
            /// Nested-2 method
            func nn2() {}
        }
    }
}

/// Extension of doubly-nested class
extension TopLevelClass.NestedLevel1.NestedLevel2 {
    /// Method from a doubly-nested extension
    func ff() {}
}
