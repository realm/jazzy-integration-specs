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

/// SUPPORTED: private top-level class, should not be documented
private class PrivateTopLevelClass {}

/// SUPPORTED: public top-level class
open class PublicTopLevelClass {}

/// SUPPORTED: @objc top-level class
@objc class ObjCTopLevelClass : NSObject {}

/// SUPPORTED: top-level Objective-C subclasses
class TopLevelObjCSubclass: NSObject {}

/// SUPPORTED: top-level Swift subclasses
class TopLevelSwiftSubclass: ImplicitlyInternalTopLevelClass {}

// FIXME: Document this class [this comment should not appear in the docs]

// SUPPORTED: undocumented top-level class
class UndocumentedTopLevelClass {}

// TODO: Improve this class [this comment should not appear in the docs]

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
    // MARK: Cases

    /// SUPPORTED: documented enum element
    case documentedValue

    /// Another element with an associated value
    case otherDocumentedValue(extra: Int)

    /// Another element with an anon associated value
    case furtherDocumentedValue(String)

    // MARK: Methods

    /// Documented enum method
    func evaluate() -> Void {}
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

#if os(tvOS)
    /// Documented method that is not compiled
    func noDeclaration() {}

    // Undocumented method that is not compiled
    func noDeclarationToo() {}
#endif

    /// Typealias with multiple lines and @escaping
    public typealias Middleware<State> = (@escaping () -> Void, @escaping () -> State?)
    -> (@escaping () -> Void) -> () -> Void

    /// Extremely long method name
    open class func authAcquireTokenPost(
        acceptLanguage: String,
        xAppVersion: String,
        xDeliveryChannel: String,
        acquireTokenRequestModel: TopLevelClass? = nil,
        xGeoLocation: String? = nil,
        xApiVersion: String? = nil,
        completion: @escaping ((_ data: TopLevelClass?,_ error: Error?) -> Void)) {}
}

/// Extension of doubly-nested class
extension TopLevelClass.NestedLevel1.NestedLevel2 {
    /// Method from a doubly-nested extension
    func ff() {}
}

// MARK: Generics

/// A generic structure.
struct GenericStruct<T> {
    var t: T
}

// MARK: Raw enum cases

enum StringEnum: String {
    case a = "foo"
    case b = "\u{001b}"
    case c = "\u{1f61e}"
}

// MARK: Protocol conformances

/// An internal protocol with no members
protocol InternalProtocol {}

/// A private protocol with no members
private protocol PrivateProtocol {}

/// Conformance to an internal protocol that should appear in the docs
extension PublicTopLevelClass : InternalProtocol {}
/// Conformance to a private protocol that should not appear in docs
extension PublicTopLevelClass : PrivateProtocol {}

/// Conformance to a private type: should not appear in docs, even
/// though the protocol itself is internal.
extension PrivateTopLevelClass : InternalProtocol {}
/// Private type and protocol, conformance should not be documented.
extension PrivateTopLevelClass : PrivateProtocol {}

/// Conformance for an _external_ type to an internal protocol: document.
extension Float : InternalProtocol {}
/// Private protocol, should not be in docs
extension Float : PrivateProtocol {}

/// Renamed module type
typealias RenamedDocumentedClass = TopLevelSwiftSubclass

/// Conformance to an internal protocol: document it, even though there
/// is a typealias between the extension and the module type.
extension RenamedDocumentedClass : InternalProtocol {}
/// Private conformance, do not document.
extension RenamedDocumentedClass : PrivateProtocol {}

/// Document this conformance because it includes an internal protocol, even
/// though it also includes a private protocol.
extension TopLevelClass : InternalProtocol, PrivateProtocol {}

/// Conformance to an imported type, should appear in docs
extension PublicTopLevelClass : Encodable {}
/// Conformance to an imported type, should not appear in docs
extension PrivateTopLevelClass : Encodable {}
/// Conformance to an imported type, should appear in docs
extension RenamedDocumentedClass : Encodable {}

/// Bad-practice conformance of an imported type to an imported protocol, should appear in docs
extension Mirror : CustomDebugStringConvertible {
    public var debugDescription: String { "" }
}

// MARK: Property wrapper

@propertyWrapper
struct Nop {
    var wrappedValue: String

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

/// See `@Nop`.
struct PropertyWrapperClient {
    @Nop
    var v: String
}
