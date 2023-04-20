import SwiftUI

struct SnapView: View {
    @StateObject var model = DrawingViewModel()
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            
                if UIImage(data: model.imageData) != nil {
                    VStack {
                        
                        HStack {
                            Button {
                                // code
                                model.saveImage()
                                showingAlert = true
                            } label: {
                                Text("Save").IntroText().padding(.vertical, 20).padding(.horizontal, 20)
                            }.alert(isPresented: $showingAlert) {
                                Alert(title: Text("Saved"), message: Text("Pic Saved"), dismissButton: .default(Text("Got it!")))
                            }
                            Spacer()
                            Button {
                                // code
                                model.cancelImageEditing()
                            } label: {
                                Text("Cancel").IntroText().padding(.vertical, 20).padding(.horizontal, 20)
                            }
                        }.padding(0)
                        DrawingScreen().environmentObject(model)
                        
                    }
                    
                } else {
                    // Show Image Picker Button ..
                    VStack {
                        Spacer()
                        Text("Snap and Draw Your Happiness Memory").IntroText().padding(10)
                        Button {
                            model.showImagePicker.toggle()
                        } label: {
                            Image(systemName: "plus").font(.title).foregroundColor(.black).frame(width: 50, height: 50)
                                .background(Color.white).cornerRadius(10).shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 5).cornerRadius(10).shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: -5)
                        }
                        Spacer()
                    }
                    
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).padding(0)
            
        
        
        // Showing Image Picker to pick Image
        .sheet(isPresented: $model.showImagePicker) {
            ImagePicker(showPicker: $model.showImagePicker, imageData: $model.imageData)
        }
    }
}
