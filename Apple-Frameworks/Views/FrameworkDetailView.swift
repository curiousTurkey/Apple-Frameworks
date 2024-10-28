//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    var framework: Framework
    
    var body: some View {
        VStack{
            DismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(buttonLabel: "Learn More")
            }
        }.sheet(isPresented: $isShowingSafariView){
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com/")!)
        }
    }
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.frameworks[0]) //.constant(false) : hardcoding binding for previews
}
