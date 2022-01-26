//
//  ViewController.swift
//  MVVM-C
//
//  Created by MacBookPro on 26.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    var viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialState()
        bindViewModel()
    }
    
    func initialState() {
        statusLabel.isHidden = true
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
        statusLabel.isHidden = false
    }
    
    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
                
            }
        }
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        }
    }

}

