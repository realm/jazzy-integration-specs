
import Dependency

extension EmptyExtensionToExternalType_Should_be_HIDDEN {
    /// An extension method (to ensure the extension is not empty.)
    private func extensionMethod() {}
}
extension EmptyExtensionToExternalType_Should_be_HIDDEN where Component : Equatable {
    /// An extension method (to ensure the extension is not empty.)
    internal func extensionMethod() {}
}
extension EmptyExtensionToExternalType_Should_be_HIDDEN where Component == Bool {
    /// :nodoc:
    public func extensionMethod() {}
}
