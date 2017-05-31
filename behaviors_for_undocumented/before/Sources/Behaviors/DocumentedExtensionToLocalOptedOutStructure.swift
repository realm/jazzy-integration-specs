
/// :nodoc:
public struct LocalOptedOutStructure {}

/// This extension should be HIDDEN because the main declaration is opted out.
extension LocalOptedOutStructure {
    
    /// Should be HIDDEN because the main declaration is opted out.
    public func should_be_HIDDEN_because_main_declaration_is_opted_out_d() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_d() {}
    
    public func should_be_HIDDEN_and_NOT_WARN_because_the_main_declaration_is_opted_out_d() {}
}

/// This extension should be HIDDEN because the main declaration is opted out.
extension LocalOptedOutStructure {
    
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
