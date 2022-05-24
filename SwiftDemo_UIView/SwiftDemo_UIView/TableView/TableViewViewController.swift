//
//  TableViewViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

class TableViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        createDataSource()
    }
    
    private func setUpUI() {
        self.view.addSubview(self.tableView)
    }
    
    private func createDataSource() {
        for index in 0...10 {
            self.dataSource.append(TableViewDataStruct(title: "title-\(index)", image: "default_avatar"))
        }
        self.tableView.reloadData()
    }
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: self.view.frame, style: .plain)
        table.delegate = self
        table.dataSource = self
        table.rowHeight = 100
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        if #available(iOS 15.0, *) {
            table.sectionHeaderTopPadding = 0
        } else {
            // Fallback on earlier versions
        }
        return table
    }()
    private var dataSource: [TableViewDataStruct] = []

}

extension TableViewViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell
        if let cell = cell {
            cell.updateData(info: self.dataSource[indexPath.row])
          return cell
        }
        return UITableViewCell()
    }
}
