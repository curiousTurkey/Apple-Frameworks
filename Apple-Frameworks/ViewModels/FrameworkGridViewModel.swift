//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        //whenever the selectedFramework changes, this value is flipped
        //didSet and willSet is a property observers
        //didSet runs after setting the value and willSet runs just before setting the value
        didSet { isShowingDetailView = true }
    }
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    @Published var isShowingDetailView = false  //whenever this value changes, the view model will publish this change to the respective view where it listens to this
    
}
