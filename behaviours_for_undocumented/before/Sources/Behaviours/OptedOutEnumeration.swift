
/// :nodoc:
public enum Should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_for_enumeration {
    
    /// Should be HIDDEN because parent enumeration is opted out.
    public func should_be_HIDDEN_because_parent_enumeration_is_opted_out() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_NOT_WARN_because_parent_enumeration_is_opted_out() {}
}
