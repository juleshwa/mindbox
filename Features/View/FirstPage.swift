//
//  FirstPage.swift
//  mindbox
//
//  Created by Juli Yanti on 17/04/23.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        VStack {
            Image("mindbox-logo").LogoStyle()
            VStack {
                Text("Our memories are UNIQUE to each person, giving us a sense of personal identity, remind us that we are all SPECIAL, with unique perspectives and experiences.").IntroText()
            }.frame(maxWidth: 800)
            Spacer()
        }
    }
}
