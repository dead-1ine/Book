//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 양원석 on 2021/03/07.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func back(_ sender: Any) {
        // 이전 화면으로 돌아가기 위해
        self.presentingViewController?.dismiss(animated: true)
    }
}
