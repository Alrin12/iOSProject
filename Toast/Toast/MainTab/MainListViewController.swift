//
//  MainListViewController.swift
//  Toast
//
//  Created by 찬규 on 2018. 1. 18..
//  Copyright © 2018년 CK. All rights reserved.
//

import UIKit
class MainListViewController: UITableViewController {
    
    override func viewDidLoad() {
        
    }
    
    var dataSet = [
        ("정보통신대학 사물함 철거 / 신청 공지", "정보통신대학 학생회 페이스북 페이지 | 2017년 9월 3일"),
        ("2017-2 성균튜터링 튜터 & 튜티 모집", "성균관대학교 공지사항 | 2017년 9월 6일"),
        ("삼성전자 CE/IM 동계 인턴 채용 상담", "TOAST 자체 수집 | 2017년 9월 7일")
    ]
        
    lazy var mainList: [MainTabDummyData] = {
        var dataList = [MainTabDummyData]()
        
        for (title, description) in self.dataSet {
            let news = MainTabDummyData()
            
            news.title = title
            news.description = description
            
            dataList.append(news)
        }
        
        return dataList
    }()
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mainList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.mainList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainListCell")!
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
        
        return cell
        
    }
}
