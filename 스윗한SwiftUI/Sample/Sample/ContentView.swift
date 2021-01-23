//
//  ContentView.swift
//  Sample
//
//  Created by 양원석 on 2021/01/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        VStack(spacing: 30) {
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.black)
            
            Text("글자색은 foreground, 배경은 background")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16))
                .italic()
                .bold()
                .underline()
                .strikethrough()
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안 보입니다.")
                .lineLimit(2)
                .multilineTextAlignment(.trailing )
                .fixedSize()            
            (Text("자간과 기준선").kerning(8)
                + Text(" 조정도 쉽게 가능합니다.").baselineOffset(8))
                .font(.system(size: 16))
            Text("🐶").font(.largeTitle)
                .padding()
                .background(Color.yellow)
            Text("🐶").font(.largeTitle)
                .background(Color.blue)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
