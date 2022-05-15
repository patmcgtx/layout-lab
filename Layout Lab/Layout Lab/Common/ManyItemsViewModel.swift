//
//  ManyItemsViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// View model that can generate a given number of items
struct ManyItemsViewModel {
    let numItems: Int
}

extension ManyItemsViewModel: ItemViewModel {
    
    var count: Int {
        return self.numItems
    }

    func item(at index:Int) -> Item? {
        return Item(title: "Item \(index)", segueId: nil)
    }
    
}
