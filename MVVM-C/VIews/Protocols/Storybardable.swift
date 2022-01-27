//
//  Storybardable.swift
//  MVVM-C
//
//  Created by MacBookPro on 27.01.2022.
//

import UIKit

protocol Storybardable {
    static func createObject() -> Self
}

extension Storybardable where Self: UIViewController {
    static func createObject() -> Self {
        let id  = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
