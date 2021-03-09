//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 양원석 on 2021/03/08.
//

import UIKit
class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        
    let srcUVC = self.source
    
    let destUVC = self.destination
    
    UIView.transition(from: srcUVC.view,
                      to: destUVC.view,
                      duration: 2,
                      options: .transitionCurlDown)
    }
}
