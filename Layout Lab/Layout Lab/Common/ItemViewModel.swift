//
//  ItemViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// A common protocol for item view models
protocol ItemViewModel {
    
    /// The total number of items in the view
    var count: Int { get }

    /// The item at the given index in the view
    func item(at index:Int) -> Item?

}
