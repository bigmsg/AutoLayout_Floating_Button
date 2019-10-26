//
//  FloatingButtonListViewController.swift
//  Floating_Button
//
//  Created by 양팀장(iMac) on 2019. 10. 24..
//  Copyright © 2019년 양팀장(iMac). All rights reserved.
//

import UIKit

class FloatingButtonListViewController: UIViewController {

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    
    // 화면이 그려지기전 오브젝트가 처음 생성되면서 실행
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
    }
    
    // 화면이 다 그려지고 난 후
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        /*
         dapming: 흔들리는 정도 0(많이 흔들림) ~ 1(흔들림없음)
         */
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            
            //  화면을 갱신하는 함수
            self.view.layoutIfNeeded()
            
        }, completion: { (completion) in
            // 애니메이션 끝나는 시점
            
            print("hello")
        })
    }

    @IBAction func food3Action(_ sender: Any) {
        print("tapped food3")
    }
    
    
    
    
    // 버튼 및 화면 내리기
    @IBAction func dissmissFloating(_ sender: Any) {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            
            self.view.layoutIfNeeded()      // 화면갱신 함수
            
        }, completion: { (completion) in
            // 애니메이션 끝나는 시점
            self.dismiss(animated: false, completion: nil)
        })
        
    }
    
    
    
}
