import Foundation

class TodoListViewModel: ObservableObject {
    @Published var todos: [Todo] = []

    let useCase = TodoUseCase()

    init(todos: [Todo] = []) {
        self.todos = todos
        useCase.output = self
    }

    func show() {
        useCase.show()
    }
}

extension TodoListViewModel: TodoUseCaseOutput {
    func onFirstFetch() {
    }

    func onFinishFirstFetch() {
    }

    func showTodoList(_ todos: [Todo]) {
        DispatchQueue.main.async {
            self.todos = todos
        }
    }

    func showTodoDetail(_ todo: Todo) {

    }
}

