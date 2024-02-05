import Foundation
import SwiftUI

struct BackgroundView<Content>: View where Content: View {
    private let bgImage = Image("background")
    let content: Content

    var body : some View {
        ZStack {
            bgImage
                .resizable()
            content
        }
    }
}
