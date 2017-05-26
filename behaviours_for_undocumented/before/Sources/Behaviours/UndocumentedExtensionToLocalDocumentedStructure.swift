
extension LocalDocumentedStructure {
    
    /// Should be VISIBLE because documentation exists for method and structure declaration.
    ///
    /// Should be merged into the method list of the main declaration.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_structure_declaration_u() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_u() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists_u() {}
}
