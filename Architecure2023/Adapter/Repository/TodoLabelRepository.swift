import Foundation

protocol TodoLabelRepository {
    func getAll() async -> Result<[TodoLabel], Error>
}
