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
    
    @IBAction func naviBack(_ sender: Any) {
        // navigation 이전 화면으로 돌아가기
        // _ (반환값이 없다는 것을 명시적으로 표시)
        _ = self.navigationController?.popViewController(animated: true)
    }
}
