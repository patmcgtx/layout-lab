//
//  RandomItemsViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

/// A view model that can produce any number of random items
struct RandomFactsViewModel: ItemViewModel {
    
    private let randomFacts = RandomFactsFromFile()
    
    // MARK: ItemViewModel
    
    /// How many random facts to include
    let count: Int

    /// The random fact at the given index in the view
    func item(at index:Int) -> Item? {
        let fact = self.randomFacts.fact(at: index)
        return Item(title: fact, storyboardId: nil)
    }
}
