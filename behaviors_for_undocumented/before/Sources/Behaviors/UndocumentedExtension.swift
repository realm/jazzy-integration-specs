
/// The user should not be required to document each extension. The user may have or even need several extensions, especially when constraints or where statements are involved.
///
/// Since the various documentation comments get merged using a currently undefined strategy, the user cannot write documentation that they can be sure will appear as they intend. For example, they may write documentation for one extension only to have a different blank extension squash it, or copy and paste to all extensions only to have the documentation repeated.
///
/// The user should still be able to reasonably assume that if they only write documentation for one extension, that is precisely what they will get.
///
/// However, when a user leaves the other extensions blank, they still likely want the methods of those other extensions to be listed. This is why extension methods should be visible even they are located in an extension that has no documentation comment of its own.
///
/// Note: If a user really wants to hide an entire extension, they still have the option of explicitly opting out with `nodoc`.
public struct UndocumentedExtension_Should_NOT_WARN<Component> {}

extension UndocumentedExtension_Should_NOT_WARN {
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
extension UndocumentedExtension_Should_NOT_WARN where Component : Equatable {
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
extension UndocumentedExtension_Should_NOT_WARN where Component : Comparable {
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
extension UndocumentedExtension_Should_NOT_WARN where Component == Bool {
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
extension UndocumentedExtension_Should_NOT_WARN where Component == Int {
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
