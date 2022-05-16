//
//  MainMenuViewModel.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import Foundation

/// View model for the main menu
struct MainMenuViewModel {
        
    private let itemMap: [Int:Item] = [
        0 : Item(title: "Large table view", storyboardId: "largeTableViewController"),
        1 : Item(title: "Table view with text search field", storyboardId: nil),
        2 : Item(title: "Horizontal scroll view", storyboardId: "horizontalScrollViewController"),
        3 : Item(title: "Horizontal scroll view with vertical tables", storyboardId: nil)
    ]

}

extension MainMenuViewModel: ItemViewModel {
    
    var count: Int {
        return self.itemMap.count
    }

    func item(at index:Int) -> Item? {
        if (0..<self.itemMap.count).contains(index) {
            return self.itemMap[index]
        } else {
            return nil
        }
    }
    
}
