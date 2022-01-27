//
//  Coordinator.swift
//  MVVM-C
//
//  Created by MacBookPro on 27.01.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
