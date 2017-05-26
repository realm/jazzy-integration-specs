
/// Should be VISIBLE because documentation exists.
public enum Should_be_VISIBLE_because_documentation_exists_for_enumeration {
    
    /// Should be VISIBLE because documentation exists for method and enumeration.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_enumeration_d() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_d() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists_d() {}
}
