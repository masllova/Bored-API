//
//  ContentView.swift
//  Activities
//
//  Created by Александра Маслова on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var activity: String = " "
    var body: some View {
        VStack {
            Text("Are you bored?")
                .font(.system(size: 35, weight: .semibold))
                .foregroundColor(.purple)
                .padding()
            Spacer()
                Text(activity)
                .frame(height: 170)
                .multilineTextAlignment(.center)
                .font(.monospaced(.title3)())
            
                Button {
                    Task {
                        let (data, _) = try await URLSession.shared.data(from: URL(string:"https://www.boredapi.com/api/activity")!)
                        let decodedResponse = try? JSONDecoder().decode(Activity.self, from: data)
                        activity = decodedResponse?.activity ?? " "
                    }
                    
                } label: {
                    Text("Click on me")
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 200, height: 50)
                        .background(Color(.purple))
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
            Spacer()
           
        }.padding(.top)
        .padding()
        
        
    }
}

struct Activity: Codable {
    let activity: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
