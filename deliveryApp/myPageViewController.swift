//
//  myPageViewController.swift
//  deliveryApp
//
//  Created by Lee Jin-A on 2022/04/21.
//

import UIKit

class myPageViewController: UIViewController {

    
    @IBOutlet weak var etcView: UIView!
    @IBOutlet weak var crrentOrderView: UIView!
    @IBOutlet weak var laterWantView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etcView.layer.borderWidth = 1.0
        etcView.layer.borderColor = UIColor.lightGray.cgColor
        etcView.layer.cornerRadius = 15
        
        crrentOrderView.layer.borderWidth = 1.0
        crrentOrderView.layer.borderColor = UIColor.lightGray.cgColor
        crrentOrderView.layer.cornerRadius = 15
        
        laterWantView.layer.borderWidth = 1.0
        laterWantView.layer.borderColor = UIColor.lightGray.cgColor
        laterWantView.layer.cornerRadius = 15




    }
    

}
