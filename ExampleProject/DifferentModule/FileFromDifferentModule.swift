import Foundation

public struct StructFromDifferentModule {

    #if DEBUG
    public static let obfuscationKey = "debug_key"
    #else
    public static let obfuscationKey = "prod_key"
    #endif

    public static func methodFromDifferentModule() {
        #if DEBUG
        print("methodFromDifferentModule - DEBUG: \(obfuscationKey)")
        #else
        print("methodFromDifferentModule - RELEASE")
        #endif
    }
}
