//
//  SwiftUIView.swift
//  Activities
//
//  Created by Александра Маслова on 18.03.2023.
//

import SwiftUI

struct TypeWriterView: View {
    @State var text: String = ""
    let finalText: String = "Hello, World!"
    
    var body: some View {
        VStack(spacing: 16.0) {
            Text(text)
            Button("Type") {
            //    typeWriter()
            }
        }
    }
    
    
   
}


struct TypeWriterView_Previews: PreviewProvider {
    static var previews: some View {
        TypeWriterView()
    }
}

