//
//  ViewController.swift
//  ligDemo
//
//  Created by 翁燮羽 on 2021/9/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushToVoucher(_ sender: UIButton) {
        let controller = VoucherController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

