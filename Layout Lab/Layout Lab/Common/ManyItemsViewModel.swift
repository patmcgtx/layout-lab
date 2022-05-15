//
//  ManyItemsViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// A view model that can produce any number of numbered items
struct ManyItemsViewModel {
    let numItems: Int
}

extension ManyItemsViewModel: ItemViewModel {
    
    var count: Int {
        return self.numItems
    }

    func item(at index:Int) -> Item? {
        return Item(title: "Item \(index)", storyboardId: nil)
    }
    
}
