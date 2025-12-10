import SwiftUI

struct FoundationModelView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.todos) { todo in
                    Text(todo.task)
                }
            }
            .navigationTitle("Todo")
            .toolbar {
                /// Apple intelligence button
                ToolbarItem(placement: .topBarTrailing) {
                    Button("", systemImage: "apple.intelligence") {
                        Task {
                            await viewModel.fetchAnswer()
                        }
                    }
                    .disabled(viewModel.isWriting)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
