//
//  UserDefaultDao.swift
//  BathWashDay
//
//  Created by 齋藤健悟 on 2022/05/09.
//

import Foundation

public protocol StoreDateProtocol {
    var storedDate: Date? { get set }
}

public struct UserDefaultDao: StoreDateProtocol {
    let userDefault = UserDefaults(suiteName: "group.k.saitoh0526.bathwash")!
    let key = "storedDate"
    
    public init() {}
    
    public var storedDate: Date? {
        get {
            if let date = userDefault.object(forKey: key) as? Date {
                return date
            }
            return nil
        }
        set (newValue) {
            guard let v = newValue else {
                return
            }
            userDefault.set(v, forKey: key)
        }
    }
}
