import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    // Since we need to get drawings so we're binding
    @Binding var canvas : PKCanvasView
    @Binding var imageData : Data
    @Binding var toolPicker : PKToolPicker
    
    // View Size
    var rect: CGSize
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.isOpaque = false
        canvas.backgroundColor = .clear
        canvas.drawingPolicy = .anyInput
        return canvas
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // update UI will update for each actions
        // appending the image in canvas subview
        if let image = UIImage(data: imageData) {
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            
            // basically we're setting image to the back of the canvas
            let subView = canvas.subviews[0]
            subView.addSubview(imageView)
            subView.sendSubviewToBack(imageView)
            
            // showing tool picker
            
            // Tool Picker, we're setting itu as first responder and make visible
            toolPicker.setVisible(true, forFirstResponder: canvas)
            toolPicker.addObserver(canvas)
            canvas.becomeFirstResponder()
        }
    }
}
