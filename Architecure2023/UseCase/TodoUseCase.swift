import Foundation

class TodoUseCase: UsesAnalytics, UsesTodoRepository {

    var output: TodoUseCaseOutput?
    var filterConditin = TodoFilter(labels: [])

    func show() {
        analytics.send(.todoList)

        Task {
            let result = try await todoRepository.getAll()
            switch result {
            case .success(let todos):
                output?.showTodoList(todos)
            case .failure(_):
                // エラー処理
                break
            }
        }
    }

    func selectTodo(todo: Todo) async {
        output?.showTodoDetail(todo)
    }

    func applyFilter(condition: TodoFilter) async {
    }
}

protocol TodoUseCaseOutput {
    func showTodoDetail(_ todo: Todo)
    func showTodoList(_ todos: [Todo])
    func onFirstFetch()
    func onFinishFirstFetch()
}
