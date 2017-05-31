
public protocol Should_be_HIDDEN_and_WARN_because_no_documentation_exists_for_protocol {
    
    /// Should be HIDDEN because parent protocol is undocumented.
    func should_be_HIDDEN_because_parent_protocol_is_undocumented()
    
    /// :nodoc:
    func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out()
    
    func should_be_HIDDEN_and_WARN_because_no_documentation_exists()
}
