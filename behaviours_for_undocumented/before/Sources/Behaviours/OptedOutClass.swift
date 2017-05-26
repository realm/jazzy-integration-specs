
/// :nodoc:
public class Should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_for_class {
    
    /// Should be HIDDEN because parent class is opted out.
    public func should_be_HIDDEN_because_parent_class_is_opted_out() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_NOT_WARN_because_parent_class_is_opted_out() {}
}
