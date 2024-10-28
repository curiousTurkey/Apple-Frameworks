//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(Color(.label)) //.label will make the content white in dark mode and vice versa
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }.padding()
    }
}

#Preview {
    DismissButton(isShowingDetailView: .constant(false))
}
