//
//  Callouts.swift
//  MiscJazzyFeatures
//
//  Created by Jeremy David Giesbrecht on 12/13/16.
//  Copyright (c) 2014 Realm. All rights reserved.
//

/// Function (recommended documentation comment style)
///
/// - Parameters:
///     - aParameter: A parameter
///       Use *this* parameter like so:
///
///         ```swift
///         aParameter
///         ```
///         Also see `functionB(_:)` and `DocumentedEnum.documentedValue`
///     - bParameter: Another parameter
///
/// - Returns: A result
///   More description of the result
///
///     Some reasons for the result:
///     1. A reason
///     2. This reason's text has an apostrophe
///
public func functionA(_ aParameter: Bool, bParameter: Bool) -> Bool {
    return true
}

/// Function (alternate documentation comment style)
///
/// - Parameter aParameter: A parameter
public func functionB(_ aParameter: Bool) -> Bool {
    return true
}

/// Function (non‐standard documentation comment style)
///
/// - parameters:
///     - aParameter: A parameter
///
/// - returns: A result
public func functionC(_ aParameter: Bool) -> Bool {
    return true
}

/// Function (alternate non‐standard documentation comment style)
///
/// - parameter: aParameter: A parameter
public func functionD(_ aParameter: Bool) -> Bool {
    return true
}

/// Function (alternate documentation comment style #2)
///
/// - Parameter aParameter: A parameter
///   More about the parameter
///
///     Even more about the parameter
public func functionE(_ aParameter: Bool) -> Bool {
    return true
}
