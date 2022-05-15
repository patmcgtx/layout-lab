//
//  ItemCollectionViewCell.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    func configure(with item: Item) {
        self.title.text = item.title
    }
}
