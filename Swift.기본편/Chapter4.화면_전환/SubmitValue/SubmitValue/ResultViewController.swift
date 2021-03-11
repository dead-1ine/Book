//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 양원석 on 2021/03/09.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 화면에 값을 표시하는데 사용될 레이블
    @IBOutlet var resultEmail: UILabel!     // 이메일
    @IBOutlet var resultUpdate: UILabel!    // 자동갱신 여부
    @IBOutlet var resultInterval: UILabel!  // 갱신주기
    
    // 1. email 값을 받을 변수
    var paramEmail: String = ""
    // 2. update 값을 받을 변수
    var paramUpdate: Bool = false
    // 3. Interval 값을 받을 변수
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
   
    @IBAction func onBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
