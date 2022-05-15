//
//  MainMenuViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import Foundation

/// TODO patmcg doc / read-only
struct MainMenuViewModel {
        
    private let itemMap: [Int:Item] = [
        0 : Item(title: "Basic table view", segueId: nil),
        1 : Item(title: "Table view with text search field", segueId: nil),
        2 : Item(title: "Horizontal scroll view", segueId: nil),
        3 : Item(title: "Horizontal scroll view with vertical tables", segueId: nil)
    ]

    /// TODO patmcg doc
    var count: Int {
        return self.itemMap.count
    }

    /// TODO patmcg doc
    func item(at index:Int) -> Item? {
        if (0..<self.itemMap.count).contains(index) {
            return self.itemMap[index]
        } else {
            return nil
        }
    }
}
