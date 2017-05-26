
/// Should be VISIBLE because documentation exists.
public struct Should_be_VISIBLE_because_documentation_exists_for_structure {
    
    /// Should be VISIBLE because documentation exists for method and structure.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_structure() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}
