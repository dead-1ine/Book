//
//  ContentView.swift
//  imageExam
//
//  Created by 양원석 on 2021/02/02.
//

import SwiftUI
// Image를 가져오기 위해서는 Assets.xcassets에 이미지 파일이 있어야 함
struct ContentView: View {
    var body: some View {
        HStack { // 가로 방향으로 뷰를 배열하는 컨테이너 뷰
            Image("SwiftGreen") // 원본 100 x 100
            Image("SwiftGreen").frame(width: 50, height: 50)
            Image("SwiftGreen").frame(width: 200, height: 200)
        }
        
    }
}

struct TestView: View {
    var body: some View {
        // Resizable : 이미지의 크기를 변경해야 하는 경우 사용
        // 주의: frame과 resizable의 순서가 바뀌면 오류가 발생함
        HStack {
            // capInsert 매개 변수에 늘어날 영역 지정. resizingMode 생략 시 stretch 적용
            Image("SwiftGreen").resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0))
                .frame(width: 150, height: 150)
            Image("SwiftGreen").resizable()     // 이미지 크기를 변경하기 위한 수식어
                .frame(width: 50, height: 50)
            Image("SwiftGreen").resizable()
                .frame(width: 200, height: 200)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        TestView()
    }
}
