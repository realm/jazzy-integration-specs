//
//  MiscMarkdown.swift
//  MiscJazzyFeatures
//
//  Created by John Fairhurst on 25/04/17
//  Copyright (c) 2017 Jazzy. All rights reserved.
//

/// A class to demonstrate miscellaneous markdown formatting behaviors
public class MiscMarkdown {

    /// Blank line not required before:
    /// * lists,
    ///
    /// ...code fence blocks:
    /// ```swift
    /// var aVar = 2
    /// ```
    ///
    /// ...or html blocks:
    /// <div>
    /// No *markdown formatting*
    /// </div>
    ///
    /// Callouts are lists too.
    /// - note: So no blank line needed before this one.
    ///
    ///     Second paragraph of the note.
    ///
    /// ### Redcarpet behaviors, preserved for compatibility
    ///
    /// However:
    /// * Still need a blank line before a code fence
    ///   inside a list item of a "tight list"
    ///
    ///   ```swift
    ///   var aVar = 3
    ///   ```
    /// * "tight" is when no blank between *this* bullet and the
    ///   end of the previous bullet's content.
    ///
    /// But if you use a "loose list"
    /// * ...then...
    ///   ```swift
    ///   var aVar = 4
    ///   ```
    ///
    /// * ...then you can skip the blank line before the code block.
    ///
    ///     Simple.
    ///
    /// ### Commonmarker behaviors
    ///
    /// * With commonmarker there's no need for blank lines:
    ///   ```swift
    ///   var aVar = 5
    ///   ```
    /// * ...and no need to worry about list tightness.
    ///
    public func linespacing() {
    }

    /// Hard linebreaks via a backslash \
    /// or two spaces  
    /// at the end of the line.
    public func linebreak() {
    }

    /// * Changing the markdown bullet symbol
    /// + Causes a new list to start
    /// + Item 2
    /// - List 3
    public func lists() {
    }

    /// * Lists
    ///   * Indent
    ///     * With two spaces
    ///       * As deep as you like
    ///         * Which is seldom practical
    public func listNesting() {
    }
}
