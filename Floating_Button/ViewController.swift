//
//  ViewController.swift
//  Floating_Button
//
//  Created by 양팀장(iMac) on 2019. 10. 24..
//  Copyright © 2019년 양팀장(iMac). All rights reserved.
//

/*
    hello pull 테스트 하기
 작성자: imac
 작성자: macbook 10:34
 imac(10:36): 커밋&push 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopUp" {
            let floatingVC = segue.destination as! FloatingButtonListViewController
            
            // 아래층의 viewController가 보여지게끔 함 + view 배경색 없게
            floatingVC.modalPresentationStyle = .overCurrentContext
            // 테스트
            
        }
    }


}

