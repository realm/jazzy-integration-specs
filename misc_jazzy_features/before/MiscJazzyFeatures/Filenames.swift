//
//  Filenames.swift
//  MiscJazzyFeatures
//
//  Created by Jeremy David Giesbrecht on 12/13/16.
//  Copyright (c) 2014 Realm. All rights reserved.
//

/// Function with characters unsafe for filenames.
public func /<T>(lhs: T, rhs: T) {}

/// First function with same signature
public func sameSignature(value: String) {}

/// Second function with same signature
public func sameSignature(value: Int) {}

/// Function that deprecated
///
/// Test relative links:
///   - `sameSignature`
///   - `sameSignature(value:)`
///   - `sameSignature(value: String)`
///
@available(*, deprecated, message: "Use `sameSignature(value:)` instead.")
public func deprecatedFunction() {}

/// Class with character that is HTML-escaped.
class Operators_Namespace {
    /// Function with characters unsafe for html.
    public static func <(lhs: Operators_Namespace, rhs: DocumentedEnum) -> Bool {
        return false
    }
}
