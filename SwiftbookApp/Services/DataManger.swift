//
//  DataManger.swift
//  SwiftbookApp
//
//  Created by Alexey Efimov on 04/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    
    func saveFavoriteStatus(for courseName: String, with status: Bool) {
        userDefaults.set(status, forKey: courseName)
    }
    
    func loadFavoriteStatus(for courseName: String) -> Bool {
        return userDefaults.bool(forKey: courseName)
    }
}
