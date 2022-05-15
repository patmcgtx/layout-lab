//
//  RandomItemsViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// A view model that can produce any number of random items
struct RandomItemsViewModel {
    
    private let randomFacts = RandomFactsFromFile()
    
    /// How many random items to include
    let numItems: Int
}

extension RandomItemsViewModel: ItemViewModel {
    
    var count: Int {
        return self.randomFacts.count
    }

    func item(at index:Int) -> Item? {
        let fact = self.randomFacts.fact(at: index)
        return Item(title: fact, storyboardId: nil)
    }
    
}
