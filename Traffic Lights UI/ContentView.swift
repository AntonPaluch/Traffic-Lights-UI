//
//  ContentView.swift
//  Traffic Lights UI
//
//  Created by Pandos on 25.03.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    private let isOn = 1.0
    private let isOff = 0.2
    
    @State private var title = "START"
    
    @State private var currentLight = CurrentLight.red
    
    @State private var ligthRed = 0.2
    @State private var ligthGreen = 0.2
    @State private var ligthYellow = 0.2
    
    private func nextLight() {
        switch currentLight {
        case .red:
            ligthGreen = isOff
            ligthRed = isOn
            currentLight = .yellow
        case .yellow:
            ligthRed = isOff
            ligthYellow = isOn
            currentLight = .green
        case .green:
            ligthYellow = isOff
            ligthGreen = isOn
            currentLight = .red
        }
        title = "NEXT"
    }

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorCircle(color: .red, contrast: ligthRed)
                ColorCircle(color: .yellow, contrast: ligthYellow)
                ColorCircle(color: .green, contrast: ligthGreen)
                
                ButtonStart(title: title) {
                    nextLight()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
