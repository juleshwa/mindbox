//
//  ThirdPage.swift
//  mindbox
//
//  Created by Juli Yanti on 17/04/23.
//

import SwiftUI

struct ThirdPage: View {
    var body: some View {
        VStack {
            Image("old").ThirdPageImageStyle()
            VStack {
                Text("Memories matter. Happy memories are essential to our MENTAL HEALTH. They strengthen our sense of identity and purpose and bond our relationships. Happy memories are an important ingredient in present happiness. When we are young, everything is new. We are doing so many things for the first time that we form very strong memories. But as we get OLDER, we have to work harder to turn events into memories and to benefit from their happiness-inducing qualities.").IntroText()
            }.frame(maxWidth: .infinity).padding(.horizontal, 100)
            Spacer()
        }
    }
}
