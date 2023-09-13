//
//  WellcomViewController.swift
//  RandomUsers
//
//  Created by Илья on 11.09.2023.
//

import UIKit

final class WellcomViewController: UIViewController {
    var networkManager = NetworkManager.shared
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createRandomUser" {
            let resultVC = segue.destination as? ResultViewController
            
            networkManager.fetchUser(Person.self, from: DataStore.shared.url) { result in
                switch result {
                case .success(let info):
                    resultVC?.nameLabel.text = """
Name: \(info.results.first?.name.title ?? "") \(info.results.first?.name.first ?? "") \(info.results.first?.name.last ?? "")
"""
                    resultVC?.genderLabel.text = "Gender: \(info.results.first?.gender ?? "")"
                    resultVC?.emailLabel.text = "Email: \(info.results.first?.email ?? "")"
                    resultVC?.phoneLabel.text = "Phone: \(info.results.first?.phone ?? "")"
                    resultVC?.natLabel.text = "Nationality: \(info.results.first?.nat ?? "")"
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
