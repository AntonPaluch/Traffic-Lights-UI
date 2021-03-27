//
//  ColorCircle.swift
//  Traffic Lights UI
//
//  Created by Pandos on 25.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var contrast: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .contrast(contrast)
            .padding()
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, contrast: 0.3)
    }
}
