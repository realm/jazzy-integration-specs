
import Dependency

extension EmptyExtensionToExternalType_Should_be_HIDDEN {
    /// An extension method (but private, so the extension is still empty.)
    private func extensionMethod() {}
}
extension EmptyExtensionToExternalType_Should_be_HIDDEN where Component : Equatable {
    /// An extension method (but internal, so the extension is still empty.)
    internal func extensionMethod() {}
}
extension EmptyExtensionToExternalType_Should_be_HIDDEN where Component == Bool {
    // The extension is still empty.
    /// :nodoc:
    public func extensionMethod() {}
}

import Foundation

extension NSBundle {
    /// An extension method (but private, so the extension is still empty.)
    private func extensionMethodPrivate() {}
}
extension NSBundle {
    /// An extension method (but internal, so the extension is still empty.)
    internal func extensionMethodInternal() {}
}
extension NSBundle {
    // The extension is still empty.
    /// :nodoc:
    public func extensionMethodOptedOut() {}
}
