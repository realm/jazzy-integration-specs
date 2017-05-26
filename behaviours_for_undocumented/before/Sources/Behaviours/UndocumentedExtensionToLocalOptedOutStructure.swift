
extension LocalOptedOutStructure {
    
    /// Should be HIDDEN because the main declaration is opted out.
    public func should_be_HIDDEN_because_main_declaration_is_opted_out_u() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_u() {}
    
    public func should_be_HIDDEN_and_NOT_WARN_because_main_declaration_is_opted_out_u() {}
}
