//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Eldhose on 2024-10-28.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable{
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
