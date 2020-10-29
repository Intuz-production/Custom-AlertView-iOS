//
//  ViewController.swift
//  CustomAlertView
//
//  Created by Bharat Jadav on 23/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickOpenPopUp(_ sender : UIButton) {
        let msgPopup : CustomAlertVC = CustomAlertVC.init(nibName: "CustomAlertVC", bundle: nil)
        msgPopup.selectOption = 2
        self.navigationController?.presentVC(msgPopup)
        
        msgPopup.callbackSelectedOption = {(indexID) -> Void in
            if indexID == 1 {
                print("YES Clicked")
            }
            else {
                print("NO Clicked")
            }
        }
    }

}

