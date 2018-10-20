//
//  ViewController.swift
//  DelegateXuyenManHinh
//
//  Created by Trung on 10/8/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewDelegate {

    @IBOutlet weak var textFieldVC: UITextField!
    var dataVC: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if dataVC != nil {
//            textFieldVC.text = dataVC
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func backFromSecond(fromSecond: String) {
        textFieldVC.text = fromSecond
    }

    @IBAction func buttonVC(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toSecondVC = segue.destination as? SecondViewController {
            toSecondVC.dataSecondView = textFieldVC.text
            toSecondVC.delegateSecond = self
        }
    }
}

