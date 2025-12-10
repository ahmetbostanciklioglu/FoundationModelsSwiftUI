import Combine
import FoundationModels
import Foundation

@MainActor
class ViewModel: ObservableObject {
    @Published var prompt: String = "Create a 10 item list"
    @Published var todos: [Todo] = []
    @Published var isWriting: Bool = false
    
    func fetchAnswer() async {
        isWriting = true
        do {
            let session = LanguageModelSession()
            let response = session.streamResponse(generating: [Todo].self) {
                prompt
            }
            isWriting = true
            
            for try await chunkTodos in response {
                self.todos = chunkTodos.content.compactMap({
                    if let id = $0.id, let task = $0.task {
                        return .init(id: id, task: task)
                    }
                    
                    return nil
                })
            }
            
            isWriting = false
        } catch {
            isWriting = false
            print(error.localizedDescription)
        }
    }
}
