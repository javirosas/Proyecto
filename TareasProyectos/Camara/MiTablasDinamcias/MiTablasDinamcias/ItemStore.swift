//
//  ItemStore.swift
//  MiTablasDinamcias
//
//  Created by UNAM on 5/28/18.
//  Copyright © 2018 com.unam.aragon. All rights reserved.
//

import UIKit
class ItemStore {
    var allItems = [Item]()
    
    /*
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
 */

    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
 
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return }
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        // Remove item from array
        allItems.remove(at: fromIndex)
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
    
    
}
