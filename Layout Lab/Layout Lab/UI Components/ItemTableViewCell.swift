//
//  ItemTableViewCell.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    func configure(with item: Item) {
        self.textLabel?.text = item.title
    }

}
