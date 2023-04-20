//
//  SecondPage.swift
//  mindbox
//
//  Created by Juli Yanti on 17/04/23.
//

import SwiftUI

struct SecondPage: View {
    var body: some View {
        VStack {
            Image("youth").LogoStyle()
            VStack {
                Text("How does Memory Work? It is an integral part of human cognition, since it allows individuals to RECALL and DRAW upon past events to frame their understanding of and behavior within the present.").IntroText()
            }.frame(maxWidth: 800)
            Spacer()
        }
    }
}


