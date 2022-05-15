//
//  LargeTableViewController.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import Foundation
import UIKit

class LargeTableViewController: UIViewController {
    
    static func instantiate() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "largeTableViewController")
        return vc
    }
    
}
