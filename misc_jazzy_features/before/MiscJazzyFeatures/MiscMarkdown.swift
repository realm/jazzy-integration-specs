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

    /// Some "quoted text".
    ///
    /// Some "quoted text with *emphasis* inside the quotes"
    public func quotesVsStyle() {
    }

    /// Inline math: `$ax^2+bx+c=0$`
    ///
    /// Block/display math: `$$x={\frac {-b\pm {\sqrt {b^{2}-4ac}}}{2a}}$$`
    ///
    public func latexMath() {
    }

    /// Footnotes (1)
    ///
    /// Footnote numbering restarts [^1]
    ///
    /// [^1]: for each markdown unit.
    public func footnote1() {
    }

    /// Footnotes (2)
    ///
    /// The actual numbering [^2] is done by redcarpet.
    ///
    /// [^2]: The backlink here:
    ///
    ///       ...stays within `footnote2()`.
    public func footnote2() {
    }

    /// DocC link format
    ///
    /// You can use any number of backticks as long as they balance.
    ///
    /// Formats:
    /// * ``PublicTopLevelClass``
    /// * ``ClassWithInitializers/init(a:)``
    /// * ``<doc:ClassWithInitializers/init(a:)>``
    /// * `PublicTopLevelClass-swift.class`
    /// * ````ImplicitlyInternalTopLevelClass/NestedClass/ee()-j8nf````
    public func docCLinks() {
    }

    /// DocC callouts
    ///
    /// > important: Do not run
    ///
    /// Here comes a tip:
    ///
    /// > Tip: Always walk
    /// >
    /// > Another paragraph in the tip.
    ///
    /// Warnings have a color.
    /// > Warning: Be alert
    ///
    /// Non-callout lines are required between callouts.
    ///
    /// > experiment: Nested callouts...
    /// > > experiment: ...work.
    /// > >
    /// > > They work in DocC too though this might not be intentional.
    ///
    /// Finally:
    ///
    /// > Malformed or untitled callouts appear as *Note*s in DocC but jazzy
    /// > shows them as traditional block-quotes for compatibility with GFM
    /// > and existing docs.
    public func docCCallouts() {
    }
}
