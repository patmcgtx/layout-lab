//
//  ManyItemsViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// A view model that can produce any number of numbered items
struct ManyItemsViewModel: ItemViewModel {
    
    // MARK: ItemViewModel

    /// How many items to produce
    let count: Int

    /// The generated item at the given index in the view
    func item(at index:Int) -> Item? {
        return Item(title: "Item \(index)", storyboardId: nil)
    }
}
