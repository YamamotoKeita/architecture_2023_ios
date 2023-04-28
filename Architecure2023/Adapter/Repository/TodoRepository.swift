import Foundation

protocol TodoRepository {
    func getAll() async -> Result<[Todo], Error>
    func select(filter: TodoFilter) async -> Result<[Todo], Error>
    func add(todo: Todo) async
}
