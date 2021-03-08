//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 양원석 on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func wind(_ sender: Any) {
        // 세그웨이를 실행한다
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

