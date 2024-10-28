//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView{
                    LazyVGrid(columns: viewModel.columns){
                        ForEach(MockData.frameworks){ framework in
                            FrameWorkTitleView(framework: framework)
                                .onTapGesture {
                                    print("Clicked")
                                    viewModel.selectedFramework = framework
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("🍎 Frameworks")
            //another alternative for sheet is fullScreenCover which makes the content full screen
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView){
            //.sheet(isPresented: $viewModel.isShowingDetailView){
                //content of sheet / modal
                FrameworkDetailView(
                    isShowingDetailView: $viewModel.isShowingDetailView,
                    framework: viewModel.selectedFramework ?? MockData.frameworks[0]
                )
            }
        }
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
