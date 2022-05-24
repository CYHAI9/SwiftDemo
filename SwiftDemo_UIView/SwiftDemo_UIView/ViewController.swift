//
//  ViewController.swift
//  SwiftDemo_UIView
//
//  Created by 陈海哥 on 2022/5/19.
//

import UIKit

struct VCDataStruct {
    let name: String?
    let controller: UIViewController?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
        createData()
    }
    
    private func setUpUI() {
        self.view.addSubview(tableView)
    }
    private func createData() {
        self.dataSource.append(contentsOf: [
            VCDataStruct(name: "ViewController", controller: ControllerViewController()) ,
            VCDataStruct(name: "View", controller: ViewViewController()) ,
            VCDataStruct(name: "Label", controller: LabelViewController()) ,
            VCDataStruct(name: "Button", controller: ButtonViewController()) ,
            VCDataStruct(name: "ImageView", controller: ImageViewViewController()) ,
            VCDataStruct(name: "TableVIew", controller: TableViewViewController()) ,
            VCDataStruct(name: "ColletionView", controller: CollectionViewController()) ,
            VCDataStruct(name: "ScrollerView", controller: ScrollerViewController()) ,
            VCDataStruct(name: "TextField", controller: TextFieldViewController()) ,
            VCDataStruct(name: "TextView", controller: TextViewViewController()) ,
            VCDataStruct(name: "searchView", controller: SearchViewController()) ,
            VCDataStruct(name: "Layer", controller: LayerViewController()) ,
            VCDataStruct(name: "Others", controller: OthersViewController())
                          ])
        
        self.tableView.reloadData()
    }
    
    private var dataSource: [VCDataStruct] = []
    private lazy var tableView: UITableView = {
        let tabel = UITableView(frame: self.view.frame, style: .plain)
        tabel.rowHeight = 44.0
        tabel.delegate = self
        tabel.dataSource =  self
       return tabel
    }()

}
//MARK: 协议可以在本身类上面继承，实现，但尽量协议开扩展来写，这是一个好习惯，
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    //组数, 在.plain模式下，可以忽略不写
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //组里行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Identifier是用于复用，在数据过多的时候，重复利用屏幕外的cell，实行一个复用池，但正是如此要注意复用引起的错乱
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        }
        cell?.selectionStyle = .none
        let model = self.dataSource[indexPath.row]
        cell?.textLabel?.text = model.name
        
        return cell ?? UITableViewCell()//这里虽然可以使用cell!, 但是!带来的绝对性，有风险，并不安全，所以尽量不使用!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.dataSource[indexPath.row]
        guard let vc = model.controller else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
