class TodoRepositoryMock: TodoRepository {

    var list: [Todo] = testData

    func getAll() async -> Result<[Todo], Error> {
        return .success(list)
    }

    func select(filter: TodoFilter) async -> Result<[Todo], Error> {
        let result = list.filter { todo in
            return filter.labels.contains { label in label.name == todo.label.name }
        }
        return .success(result)
    }

    func add(todo: Todo) async {
        list.append(todo)
    }

    static let testData: [Todo] = [
        Todo(content: "クレーンゲームで景品をとる", label: TodoLabelRepositoryMock.experience),
        Todo(content: "チョコフォンデュを食べる", label: TodoLabelRepositoryMock.gourmet),
        Todo(content: "神戸牛を食べる", label: TodoLabelRepositoryMock.gourmet),
        Todo(content: "ミシュラン3つ星店に行く", label: TodoLabelRepositoryMock.gourmet),
        Todo(content: "サメの刺身を食べる", label: TodoLabelRepositoryMock.gourmet),
        Todo(content: "スキューバダイビングをする", label: TodoLabelRepositoryMock.experience),
        Todo(content: "英語ネイティブのチームで仕事をする", label: TodoLabelRepositoryMock.experience),
        Todo(content: "ギターの6弦×22フレット132音を全て覚える", label: TodoLabelRepositoryMock.skill),
        Todo(content: "グランピングする", label: TodoLabelRepositoryMock.experience),
        Todo(content: "北欧の凍った海を見る", label: TodoLabelRepositoryMock.travel),
        Todo(content: "オーロラを見る", label: TodoLabelRepositoryMock.travel),
        Todo(content: "ArflexのGALE（ソファ）を買う", label: TodoLabelRepositoryMock.material),
        Todo(content: "世界を平和にする", label: TodoLabelRepositoryMock.social),
        Todo(content: "定期的にカラオケに行く", label: TodoLabelRepositoryMock.life),
    ]
}
