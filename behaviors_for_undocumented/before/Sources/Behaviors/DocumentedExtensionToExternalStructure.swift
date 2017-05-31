
import Cocoa

/// This extension documentation should be VISIBLE.
///
/// Rationale:
///
/// Regardless of whether symbols from other modules have documentation or not, their main declarations are out of the user’s control. The only place available to add documentation is on an extension.
///
/// Note: This documentation also clashes with that of another extension. For this, the merge strategy is currently undefined.
extension NSView {
    
    /// Should be VISIBLE because documentation exists for method and the extended type is external.
    ///
    /// Methods from different extensions should be merged into a single list.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_extended_type_is_external() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}

/// This extension documentation should be VISIBLE.
///
/// Rationale:
///
/// Regardless of whether symbols from other modules have documentation or not, their main declarations are out of the user’s control. The only place available to add documentation is on an extension.
///
/// Note: This documentation also clashes with that of another extension. For this, the merge strategy is currently undefined.
extension NSView {
    
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
