import SwiftUI

struct ContentView: View {
    @State var screenNum = 0
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ZStack {
                switch screenNum {
                case 0:
                    FirstPage()
                case 1:
                    SecondPage()
                case 2:
                    ThirdPage()
                default:
                    HomeView()
                }
                
                if(screenNum <= 2 && screenNum > 0) {
                    HStack {
                        Button {
                            // back button
                            screenNum -= 1
                            if(screenNum < 0) {
                                screenNum = 0
                            }
                            
                        } label: {
                            Text("Back")
                            Image(systemName: "arrow.left")
                        }.IntroNavigationLeft()
                        
                        Button {
                            // next button
                            
                            if (screenNum != 0) {
                                screenNum += 1
                            }
                            
                            if (screenNum >= 3) {
                                screenNum = 3
                            }
                        } label: {
                            Text("Next")
                            Image(systemName: "arrow.right")
                        }.IntroNavigationRight()

                    }.BottomGroup()
                }
                
                if(screenNum == 0) {
                    HStack {
                        Button {
                            // Increment of ScreenNum
                            screenNum = 1
                        } label: {
                            Text("Start")
                            Image(systemName: "arrow.right")
                        }.IntroNavigationRight()

                    }.BottomGroup()
                }
                
                
            }
    
            
        }
    }
}
