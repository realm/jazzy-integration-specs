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
    public func linespacing() {
    }

    /// - bullet
    /// - list
    /// - note: Callout
    /// - continued
    /// - list
    public func bulletsAndCallouts() {
    }
}
