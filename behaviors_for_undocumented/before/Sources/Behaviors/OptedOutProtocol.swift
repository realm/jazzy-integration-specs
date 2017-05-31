
/// :nodoc:
public protocol Should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_for_protocol {
    
    /// Should be HIDDEN because parent protocol is opted out.
    func should_be_HIDDEN_because_parent_protocol_is_opted_out()
    
    /// :nodoc:
    func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out()
    
    func should_be_HIDDEN_and_NOT_WARN_because_parent_protocol_is_opted_out()
}
