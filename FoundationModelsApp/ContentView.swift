import SwiftUI
import Combine
import FoundationModels

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        FoundationModelView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
