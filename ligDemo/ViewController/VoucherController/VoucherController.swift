//
//  VoucherController.swift
//  ligDemo
//
//  Created by 翁燮羽 on 2021/9/5.
// 優惠卷畫面

import UIKit

class VoucherController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableViewSetUp()
    }
    
    //畫面切換到歷史清單
    @IBAction func changToHistorList(_ sender: Any) {
        
        changPageView()
    }
    //更換畫面
    func changPageView(){
        
        let controller = HistorVouchListController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension VoucherController: UITableViewDelegate , UITableViewDataSource {
    
    func tableViewSetUp(){
        tableView.delegate = self
        tableView.dataSource = self
        
        //註冊xib元件
        let cellName = "\(VoucherCell.self)"
        tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(VoucherCell.self)", for: indexPath) as! VoucherCell
        
        cell.cellLabelTex.text = "可以使用"
        
        return cell
        
    }
    
    
}
