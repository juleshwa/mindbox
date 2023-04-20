import SwiftUI
import PencilKit
import UIKit

// It holds all drawing data

class DrawingViewModel: ObservableObject  {
    @Published var showImagePicker = false
    @Published var imageData: Data = Data(count: 0)
    
    // Canvas for drawing
    @Published var canvas = PKCanvasView()
    
    // Tool Picker
    @Published var toolPicker = PKToolPicker()
    
    // Save View Frame
    @Published var rect: CGRect = .zero
    
    // Cancel Function
    func cancelImageEditing() {
        imageData = Data(count: 0)
        canvas = PKCanvasView()
    }
    
    func saveImage() {
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 1)
        canvas.drawHierarchy(in: CGRect(origin: .zero, size: rect.size), afterScreenUpdates: true)
//        let generatedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
//            UIImageWriteToSavedPhotosAlbum(generatedImage!, nil, nil, nil)
        print("Saved")
        
    }
}
