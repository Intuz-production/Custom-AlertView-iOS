//
//  CustomAlertVC.swift
//  Bella
//
//  Created by Bharat Jadav on 29/08/19.
//

import UIKit

class CustomAlertVC: UIViewController {

    @IBOutlet weak var viewContainer : UIView!
    @IBOutlet weak var viewInner     : UIView!
    @IBOutlet weak var viewHeader    : UIView!
    @IBOutlet weak var viewFooter    : UIView!
    @IBOutlet weak var lblTitle      : UILabel!
    @IBOutlet weak var lblDesc       : UILabel!
    @IBOutlet weak var btnSubmit     : UIButton!
    @IBOutlet weak var btnCancel     : UIButton!
    @IBOutlet weak var imgLogo       : UIImageView!
    
    var selectOption : Int = 0
    var isActiveReminder : Bool = false
    
    var callbackSelectedOption: ((_ indexId: Int) -> Void)?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewInner.roundCorners([.topLeft,.topRight], radius: 15.0)
        btnSubmit.roundCorners([.topLeft,.bottomRight], radius: 15.0)
        btnCancel.roundCorners([.topLeft,.bottomRight], radius: 15.0)
        
        self.viewContainer.isHidden = false
        self.viewInner.isHidden = false
        
        self.viewContainer.addTapGesture { (gesture) in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        switch self.selectOption {
            case 1:
                self.lblTitle.text = "Custom title for View"
                self.lblDesc.isHidden = false
                self.imgLogo.image = #imageLiteral(resourceName: "ic_apple")
                self.btnCancel.setTitle("No", for: .normal)
                self.btnSubmit.setTitle("Yes", for: .normal)
                break
            case 2:
                self.lblTitle.text = "Custom title for View"
                self.lblDesc.isHidden = false
                self.imgLogo.isHidden = true
                self.btnCancel.setTitle("Cancel", for: .normal)
                self.btnSubmit.setTitle("Subscribe", for: .normal)
                break
            case 3:
                self.lblTitle.text = "Custom title for View"
                self.lblDesc.isHidden = true
                self.imgLogo.image = #imageLiteral(resourceName: "ic_apple")
                self.btnCancel.setTitle("No", for: .normal)
                self.btnSubmit.setTitle("Yes", for: .normal)
                break
            default:
            break
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    // MARK: - Button Action
    @IBAction func btnCancelTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.callbackSelectedOption?(sender.tag)
    }
    
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        self.callbackSelectedOption?(sender.tag)
    }
    
    // MARK: - Logout API
    func performLogout() -> Void {
        self.redirectToLogin()
        self.navigationController?.dismissVC(completion: nil)
    }
    
    // MARK: - Delete Account API
    func performDeleteAccount() -> Void {
        self.navigationController?.dismissVC(completion: nil)
        self.redirectToLogin()
    }
    
    // MARK: - Redirect to Login Controller
    func redirectToLogin() -> Void {
        self.navigationController?.dismissVC(completion: nil)
    }
}

