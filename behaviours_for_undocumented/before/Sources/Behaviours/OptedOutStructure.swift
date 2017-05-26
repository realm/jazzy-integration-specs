
/// :nodoc:
public struct Should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_for_structure {
    
    /// Should be HIDDEN because parent structure is opted out.
    public func should_be_HIDDEN_because_parent_structure_is_opted_out() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_NOT_WARN_because_parent_structure_is_opted_out() {}
}
