//
//  ResultViewController.swift
//  RandomUsers
//
//  Created by Илья on 13.09.2023.
//

import UIKit

final class ResultViewController: UIViewController {
//    var networkManager = NetworkManager.shared
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var natLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        networkManager.fetchUser(Person.self, from: DataStore.shared.url) { [weak self] result in
//            switch result {
//            case .success(let info):
//                self?.nameLabel.text = "Name: \(info.results.first?.name.title ?? "") \(info.results.first?.name.first ?? "") \(info.results.first?.name.last ?? "")"
//                self?.genderLabel.text = "Gender: \(info.results.first?.gender ?? "")"
//                self?.emailLabel.text = "Email: \(info.results.first?.email ?? "")"
//                self?.phoneLabel.text = "Phone: \(info.results.first?.phone ?? "")"
//                self?.natLabel.text = "Nationality: \(info.results.first?.nat ?? "")"
//
//                print(info)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//    }
}
