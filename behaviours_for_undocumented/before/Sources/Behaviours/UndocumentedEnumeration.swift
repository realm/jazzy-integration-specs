
public enum Should_be_HIDDEN_and_WARN_because_no_documentation_exists_for_enumeration {
    
    /// Should be HIDDEN because parent enumeration is undocumented.
    public func should_be_HIDDEN_because_parent_enumeration_is_undocumented() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}
