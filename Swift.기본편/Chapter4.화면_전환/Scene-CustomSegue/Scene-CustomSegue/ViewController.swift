//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by 양원석 on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "custom_segue") {
            NSLog("커스텀 세그가 실행됨")
        } else if (segue.identifier == "action_segue") {
            NSLog("액션 세그가 실행됨")
        } else {
            NSLog("알 수 없는 세그입니다.")
        }
    }
}
