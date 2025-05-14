//
//  SessionManager.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 14/5/25.
//

import Foundation

class SessionManager {
    
    let defaults = UserDefaults.standard
    
    func setFavorite(id: String) {
        defaults.set(id, forKey: "favorite")
    }
    
    func getFavorite() -> String? {
        return defaults.string(forKey: "favorite") ?? ""
    }
    
    func isFavorite(id: String) -> Bool {
        if getFavorite() == id {
            return true
        } else {
            return false
        }
    }
    
    
}
