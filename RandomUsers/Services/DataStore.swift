//
//  DataStore.swift
//  RandomUsers
//
//  Created by Илья on 13.09.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    private init() {}

    let url = URL(string: "https://randomuser.me/api/")!
}
