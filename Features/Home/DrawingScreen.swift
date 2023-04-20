import SwiftUI
import PencilKit

struct DrawingScreen: View {
    @EnvironmentObject var model: DrawingViewModel
    var body: some View {
        ZStack {
            GeometryReader { GeometryProxy -> AnyView in
                let size = GeometryProxy.frame(in: .global).size
                DispatchQueue.main.async {
                    model.rect = GeometryProxy.frame(in: .global)
                }
                return AnyView(
                    ZStack {
                        // UIkit Pencil Kit Drawing View
                        CanvasView(canvas: $model.canvas, imageData: $model.imageData, toolPicker: $model.toolPicker, rect: size)
                    }
                )
            }
        }
    }
}
