//
//  MenuCollectionViewController.swift
//  Toast
//
//  Created by 찬규 on 2018. 1. 18..
//  Copyright © 2018년 CK. All rights reserved.
//

import UIKit

class MenuCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "MenuCell"
    var items = [
        ("학점계산기"),
        ("질문하기")
    ]
    
    lazy var menu: [MenuTabDummyData] = {
        var items = [MenuTabDummyData]()
        
        for (title) in self.items {
            let item = MenuTabDummyData()
            
            item.title = title
            
            items.append(item)
        }
        return items
    }()
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = self.menu[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        
//        cell.cellLabel?.text = self.items[indexPath.item]
        cell.cellLabel?.text = item.title
        cell.backgroundColor = UIColor.cyan
        
        return cell
    }
}
