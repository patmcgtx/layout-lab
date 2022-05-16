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
        0 : Item(title: "Large table view", storyboardId: "largeTableView"),
        1 : Item(title: "Stack views", storyboardId: "stacksViews"),
        2 : Item(title: "Basic scroll view", storyboardId: "horizontalScrollView"),
        3 : Item(title: "Pic scroll view", storyboardId: "picScrollView"),
        4 : Item(title: "Horizontal scroll view with vertical tables", storyboardId: "hvScrollView"),
        5 : Item(title: "Collection View", storyboardId: nil),
        6 : Item(title: "Collection View with Images", storyboardId: nil),
        7 : Item(title: "Collection View with async Images", storyboardId: nil),
        8 : Item(title: "Popover", storyboardId: nil),
        9 : Item(title: "Segmented Control", storyboardId: nil),
        10 : Item(title: "More Stack Views", storyboardId: nil),
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
