//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 양원석 on 2021/03/08.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        // 이전화면으로 돌아가기
        self.presentingViewController?.dismiss(animated: true)
    }
}
