//
//  SecondViewController.swift
//  DelegateXuyenManHinh
//
//  Created by Trung on 10/9/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

protocol SecondViewDelegate {
    func backFromSecond(fromSecond: String)
}

class SecondViewController: UIViewController, LastViewDelegate {

    @IBOutlet weak var textFieldSecondVC: UITextField!
    var dataSecondView: String?
    var delegateSecond: SecondViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataSecondView != nil {
            textFieldSecondVC.text = dataSecondView
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func backFromLast(fromLast: String) {
        delegateSecond?.backFromSecond(fromSecond: fromLast)
        textFieldSecondVC.text = fromLast
    }

    
    @IBAction func buttonSecondVC(_ sender: UIButton) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toLastVC = segue.destination as? LastViewController {
            toLastVC.dataLastVC = textFieldSecondVC.text
            toLastVC.delegateLast = self
        }
    }
   

}
