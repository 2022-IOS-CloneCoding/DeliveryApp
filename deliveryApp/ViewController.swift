//
//  ViewController.swift
//  deliveryApp
//
//  Created by Lee Jin-A on 2022/04/15.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
        }
    }
    @IBOutlet weak var searchView: UIView!
        
        
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print("scrollViewDidScroll is called")
        //현재 스크롤의 위치 (최상단 = 0)
        let y: CGFloat = scrollView.contentOffset.y
        var viewTopHeight = topView.layer.frame.size.height
        //변경될 최상단 뷰의 높이
        let ModifiedTopHeight = viewTopHeight - y
        
        // *** 변경될 높이가 최댓값을 초과함
        if(ModifiedTopHeight > 142)
        {
            //현재 최상단뷰의 높이를 최댓값(250)으로 설정
            viewTopHeight = 142
        }// *** 변경될 높이가 최솟값 미만임
        else if(ModifiedTopHeight < 85 + UIApplication.shared.statusBarFrame.height)
        {
            //현재 최상단뷰의 높이를 최솟값(50+상태바높이)으로 설정
            viewTopHeight = 85 + UIApplication.shared.statusBarFrame.height
        }// *** 변경될 높이가 최솟값(50+상태바높이)과 최댓값(250) 사이임
        else
        {
            //현재 최상단 뷰 높이를 변경함
            viewTopHeight = ModifiedTopHeight
            scrollView.contentOffset.y = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // topView height change from scrollview
        print("viewDidLoad 호출됨")

        let MaxTopHeight: CGFloat = 142
        let MinTopHeight: CGFloat = 85 + UIApplication.shared.statusBarFrame.height
        
        
        // topView design round radius
        searchView.clipsToBounds = true
        searchView.layer.cornerRadius = 20
        searchView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMaxYCorner, .layerMaxXMaxYCorner)
        
        //bottonView design round radius
        
        
    }

    


}

