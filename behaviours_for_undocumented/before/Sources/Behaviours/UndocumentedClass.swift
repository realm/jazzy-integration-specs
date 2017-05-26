
public class Should_be_HIDDEN_and_WARN_because_no_documentation_exists_for_class {
    
    /// Should be HIDDEN because parent class is undocumented.
    public func should_be_HIDDEN_because_parent_class_is_undocumented() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}
