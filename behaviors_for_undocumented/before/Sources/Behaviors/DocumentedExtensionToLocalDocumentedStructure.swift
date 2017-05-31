
/// This documententation from the declaration must appear.
public struct LocalDocumentedStructure {}

/// This extension documentation clashes with the documentation at the declaration (and with that of another extension).
///
/// As long as the documentation at the declaration is also visible, merging of the documentation comments may one day be implemented, but the strategy for it is currently undefined.
extension LocalDocumentedStructure {
    
    /// Should be VISIBLE because documentation exists for method and structure.
    ///
    /// Should be merged into the method list of the main declaration.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_structure() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}

/// This extension documentation clashes with the documentation at the declaration (and with that of another extension).
///
/// As long as the documentation at the declaration is also visible, merging of the documentation comments may one day be implemented, but the strategy for it is currently undefined.
extension LocalDocumentedStructure {
    
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
