//
//  ChatCollectionViewController.swift
//  Toast
//
//  Created by 찬규 on 2018. 1. 19..
//  Copyright © 2018년 CK. All rights reserved.
//

import UIKit

class ChatCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    let reuseIdentifier = "ChatSubjectCell"
    var subjects = [
        ("확률 및 랜덤 프로세스"),
        ("컴퓨터 네트워크"),
        ("인공지능 개론"),
        ("딥러닝 실습"),
        ("차세대 네트워크")
    ]
    
    lazy var _class: [ChatTabDummyData] = {
        var items = [ChatTabDummyData]()
        
        for(title) in self.subjects {
            let item = ChatTabDummyData()
            
            item.title = title
            
            items.append(item)
        }
        return items
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.subjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = self._class[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! ChatCollectionViewCell
        
        cell.classSubject?.text = item.title
        cell.backgroundColor = UIColor.gray
        
        return cell
    }
    
}
