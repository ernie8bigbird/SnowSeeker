//
//  Favourites.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 08/06/2026.
//

import SwiftUI

@Observable
class Favourites {
    private var resorts: Set<String>
    private let key = "Favourites"
    
    init() {
        // load in our saved data
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        //write out all data
    }
}
