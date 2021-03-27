//
//  ButtonStart.swift
//  Traffic Lights UI
//
//  Created by Pandos on 25.03.2021.
//

import SwiftUI

struct ButtonStart: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(Color(.blue))
        .cornerRadius(25)
    }
}

struct ButtonStart_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStart(title: "START", action: {})
        
    }
}
