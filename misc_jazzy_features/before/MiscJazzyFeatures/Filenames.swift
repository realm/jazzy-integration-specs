//
//  Filenames.swift
//  MiscJazzyFeatures
//
//  Created by Jeremy David Giesbrecht on 12/13/16.
//  Copyright (c) 2014 Realm. All rights reserved.
//

/// Function with characters unsafe for filenames.
public func /<T>(lhs: T, rhs: T) {}

class Operators {
    /// Function with characters unsafe for html.
    public static func <(lhs: DocumentedEnum, rhs: DocumentedEnum) : Bool {
        return false
    }
}
