//
//  TopLevelSwiftClass.swift
//  MiscJazzyObjCFeatures
//

/// A documented Swift class
public class TopLevelSwiftClass {
    /// A field in the Swift class
    public var name: String?
}

/// A Swift extension of an Objective-C class
public extension ObjCTopLevelClass {
    /// A method implemented in Swift
    func doSomethingInSwift() {
    }
}

/// A Swift class inheriting from an Objective-C class
public class SwiftMidLevelClass : ObjCMidLevelClass {
    /// Swift initializer
    public override init() {
        super.init()
    }
}

/// A Swift extension of an Objective-C class with
/// a different name in Swift
public extension DifferentlyNamed {
    /// A Swift property
    var swiftName: String {
        return ""
    }
}

/// A Swift extension of an Objective-C class with
/// a different name and namespace in Swift
public extension DifferentlyNamed.Settings {
    // A Swift setting
    var swiftSettings: String {
        return ""
    }
}

