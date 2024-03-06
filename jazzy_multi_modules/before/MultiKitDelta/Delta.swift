// MultiKitDelta / Delta.swift

/// Type from module delta with no children
public protocol DeltaProtocol {}

import MultiKitAlpha

/// Conditionally conform their class to our protocol
extension AlphaClass: DeltaProtocol where T: Hashable {
}

/// Here `MultiKitAlpha.Manager` should refer to our nested type,
/// and `MultiKitAlpha.AlphaClass` to that other module.  And
/// `/MultiKitAlpha.Manager` refers to the other Manager type.
public struct MultiKitAlpha {
    /// Confusingly named type
    public struct Manager {}
}
