// MultiKitAlpha / Alpha.swift

#if BUILD_BETA_ONLY
/// This should not appear with a declaration - build flag for Beta only
public class AlphaNoDeclarationTest {}
#endif

/// Type from module alpha with children
public class AlphaClass<T> {
    /// Create a new `AlphaClass`
    public init(t: T) {}

    /// someMethod
    public func someMethod() {}

    /// Nested type
    public struct Nested {
        /// Nested method from alpha
        public init() {}
    }
}

extension AlphaClass: AlphaProtocol where T: AlphaProtocol {
    /// Only for AlphaProtocol T's
    public func extraAlphaFunc() {}
}

/// Type from module alpha with no children
public func alphaFreeFunction() {}

extension String {
    /// Extension of `Swift.String` from MultiKitAlpha
    public func alphaMethod() {}
}

/// Public protocol from module alpha
public protocol AlphaProtocol {}

/// Public type with a common name - from module alpha
///
/// Link back to `Guide`
public struct Manager {
    /// Method to force a separate web page
    public func f() {}
}
