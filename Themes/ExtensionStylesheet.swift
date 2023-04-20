//
//  ExtensionStylesheet.swift
//  mindbox
//
//  Created by Juli Yanti on 19/04/23.
//

import SwiftUI


extension Image {
    // Style for App Logo
    func LogoStyle() -> some View {
        self.resizable().scaledToFit().clipShape(Circle()).frame(maxWidth: 500).padding(.bottom, -100)
    }
    func ThirdPageImageStyle() -> some View {
        self.resizable().scaledToFit().clipShape(Circle()).frame(maxHeight: 700).padding(.bottom, -100)
    }
}

extension Text {
    func IntroText() -> some View {
        self.font(.system(size: 20)).foregroundColor(.white).multilineTextAlignment(.center).padding(.horizontal)
    }
    
}

extension Button {
    func IntroNavigationLeft() -> some View {
        self.foregroundColor(Color.white)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.red)
            .cornerRadius(10)
            .padding(.horizontal, 10)
            .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
    }
    
    func IntroNavigationRight() -> some View {
        self.foregroundColor(Color.white)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.horizontal, 10)
    }
}

extension HStack {
    func BottomGroup() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom).padding()
    }
}


