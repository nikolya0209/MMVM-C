//
//  DetailViewController.swift
//  MVVM-C
//
//  Created by MacBookPro on 31.01.2022.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Detail screen loading")
        updateUI()
    }
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }
}
