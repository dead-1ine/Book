//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 양원석 on 2021/03/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveNext(_ sender: Any) {
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조.
        // 스크린에 새로 표시할 뷰 컨트롤러를 스토리보드로부터 읽어와 인스턴스화 함.
//        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        // storyboard가 하나이기 때문에 self.storyboard로 지정.
        // UIStoryboard 초기화 과정에서 파일을 직접 지정하는 법
        // let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // let uvc = storyboard.instantiateViewController(withIdentifier: "SecondVC")
        
        // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        // 인자값으로 뷰 컨트롤러 인스턴슬르 넣고 프레젠트 메소드 호출
        // uvc - 전환 대상
        self.present(uvc, animated: true)
    }
}

