//
//  WellcomViewController.swift
//  RandomUsers
//
//  Created by Илья on 11.09.2023.
//

import UIKit

final class WellcomViewController: UIViewController {
    var networkManager = NetworkManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func a() {
        networkManager.fetchUser(Person.self, from: DataStore.shared.url) { result in
            switch result {
            case .success(let info):
                return info
                print(info)
            case .failure(let error):
                print(error)
            }
        }
    }
}























private func fetchPerson() {
    URLSession.shared.dataTask(with: DataStore.shared.url) { data, _, error in
        guard let data else {
            print(error?.localizedDescription ?? "No error description.")
            return
        }
        
        do {
            let person = try JSONDecoder().decode(Person.self, from: data)
            
            print("\n\(person)\n")
        } catch {
            print("\(error.localizedDescription)\n")
        }
    }.resume()
}
