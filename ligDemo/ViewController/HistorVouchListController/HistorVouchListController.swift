//
//  HistorVouchListController.swift
//  ligDemo
//
//  Created by 翁燮羽 on 2021/9/5.
// 歷史優惠卷頁面

import UIKit

class HistorVouchListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewSet()
    }


}

extension HistorVouchListController: UITableViewDelegate , UITableViewDataSource {
    
    func tableViewSet(){
        tableView.delegate = self
        tableView.dataSource = self
        
        //註冊xib元件
        let nib = "\(VoucherCell.self)"
        tableView.register(UINib(nibName: nib, bundle: nil), forCellReuseIdentifier: nib)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(VoucherCell.self)", for: indexPath) as! VoucherCell
        
        cell.cellLabelTex.text = "不可使用"
        
        return cell
    }
    
    
    
}
