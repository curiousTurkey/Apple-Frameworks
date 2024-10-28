//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI

struct AFButton: View {
    let buttonLabel: String
    var body: some View {
        Text(buttonLabel)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(buttonLabel: "Learn More")
}
