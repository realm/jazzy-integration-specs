
extension Bool {
    
    /// Should be VISIBLE, because documentation exists for the method and the external structure declaration is outside the user’s control.
    ///
    /// Rationale:
    ///
    /// The user should not be required to document each extension. The user may have or even need several extensions, especially when constraints or where statements are involved.
    ///
    /// Since the various documentation comments get merged using a currently undefined strategy, the user cannot write documentation that they can be sure will appear as they intend. For example, they may write documentation for one extension only to have a different blank extension squash it, or copy and paste to all extensions only to have the documentation repeated.
    ///
    /// The user should still be able to reasonably assume that if they only write documentation for one extension, that is precisely what they will get.
    ///
    /// However, when a user leaves the other extensions blank, they still likely want the methods of those other extensions to be listed. This is why extension methods should be visible even they are located in an extension that has no documentation comment of its own.
    ///
    /// Note: If a user really wants to hide an entire extension, they still have the option of explicitly opting out with `nodoc`.
    ///
    /// Methods from different extensions should be merged into a single list.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_external_structure_declaration_is_outside_user_control() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out_u() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists_u() {}
}
