//
//  MainViewController.swift
//  MVVM-C
//
//  Created by MacBookPro on 31.01.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main screen loading")
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }
    @IBAction func aboutButtonPressed(_ sender: Any) {
        coordinator?.showDetail()
    }
}

