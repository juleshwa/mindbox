import SwiftUI
import PencilKit

struct StoryBox: Identifiable {
    
    var id = UUID().uuidString
    var text: String = ""
    var isBold: Bool = false
    
    // Dragging The View Over Screen
    var textColor: Color = .black
    var offSet: CGSize = .zero
    var lastOffSet: CGSize = .zero
    
}
