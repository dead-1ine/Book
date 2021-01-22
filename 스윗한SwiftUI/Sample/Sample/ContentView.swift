//
//  ContentView.swift
//  Sample
//
//  Created by 양원석 on 2021/01/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Hello Swift!")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .fontWeight(.heavy)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
