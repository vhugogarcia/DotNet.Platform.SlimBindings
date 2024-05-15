//
//  MauiFIRCrashlytics.swift
//  MauiFirebase
//

import Foundation
import FirebaseCrashlytics

@objc(FirabaseCrashlytics)
public class FirebaseCrashlytics : NSObject {
    
    @objc
    public static func record(error: Error) {
        Crashlytics.crashlytics().record(error: error)
    }
    
    @objc
    public static func setUserId(userId: String) {
        Crashlytics.crashlytics().setUserID(userId)
    }
    
    @objc
    public static func log(message: String) {
        Crashlytics.crashlytics().log(message)
    }
    
    @objc
    public static func setCustomValue(keyName: String, value: String) {
        Crashlytics.crashlytics().setCustomValue(value, forKey: keyName)
    }
    
    @objc
    public static func setCrashlyticsCollectionEnabled(enabled: Bool) {
        Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(enabled)
    }
}
