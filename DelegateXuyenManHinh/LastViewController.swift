//
//  LastViewController.swift
//  DelegateXuyenManHinh
//
//  Created by Trung on 10/9/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

protocol LastViewDelegate {
    func backFromLast(fromLast: String)
}

class LastViewController: UIViewController {

    @IBOutlet weak var textFieldLastVC: UITextField!
    var dataLastVC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataLastVC != nil {
            textFieldLastVC.text = dataLastVC
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var delegateLast: LastViewDelegate?
    @IBAction func buttonLastVC(_ sender: Any) {
        delegateLast?.backFromLast(fromLast: textFieldLastVC.text ?? "")
        self.navigationController?.popToRootViewController(animated: true )
        
        

//        if let toViewController = storyboard?.instantiateViewController(withIdentifier: "idVC") as? ViewController {
//            toViewController.dataVC = textFieldLastVC.text
//            self.present(toViewController, animated: true)
//        }
    }
    
   

}
