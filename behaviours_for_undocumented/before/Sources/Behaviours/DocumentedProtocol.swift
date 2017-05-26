
/// Should be VISIBLE because documentation exists.
public protocol Should_be_VISIBLE_because_documentation_exists_for_protocol {
    
    /// Should be VISIBLE because documentation exists for method and protocol.
    func should_be_VISIBLE_because_documentation_exists_for_method_and_protocol()
    
    /// :nodoc:
    func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out()
    
    func should_be_HIDDEN_and_WARN_because_no_documentation_exists()
}
