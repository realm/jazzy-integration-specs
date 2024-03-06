// MultiKitBeta / Beta.swift

#if BUILD_BETA_ONLY
/// This is a test that modules can have different build flags
public struct BetaBuildFlagOK {}
#endif

/// Type from module beta with children
public class BetaClass {
    /// someMethod
    public func someMethod() {}
}

/// Type from module beta with no children
public protocol BetaProtocol {}

/// Type from module beta with no children
public protocol BetaProtocol2 {}

extension String {
    /// Extension of `Swift.String` from MultiKitBeta
    public func betaMethod() {}
}

import MultiKitAlpha

/// Unconditionally conform our class to their protocol
extension BetaClass: AlphaProtocol {
}

/// Conditionally conform their class to our protocol
extension AlphaClass: BetaProtocol where T: Codable {
}

/// Another conditional conformance
extension AlphaClass: BetaProtocol2 where T: BetaProtocol {
}

/// Add a method to their class
extension AlphaClass {
    /// Method from module beta
    public func betaExtensionMethod() {}
}

/// Add a method to their nested type
extension AlphaClass.Nested {
    /// Method from module beta
    public func betaMethod() {}
}

/// Public type with a common name - from module beta
public struct Manager {
    /// Method to force a separate web page
    public func f() {}
}
