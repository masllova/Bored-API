//
//  ContentView.swift
//  Activities
//
//  Created by Александра Маслова on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var showActivity = false
    var body: some View {
        Button(action: {
            self.showActivity.toggle()
        }, label: {
            Text("Click on me")
        }).sheet(isPresented: $showActivity) {
            ActivityView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
