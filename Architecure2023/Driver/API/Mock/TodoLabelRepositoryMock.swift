class TodoLabelRepositoryMock: TodoLabelRepository {

    var list: [TodoLabel] = testData

    func getAll() async -> Result<[TodoLabel], Error> {
        return .success(list)
    }

    static let testData: [TodoLabel] = [
        experience, gourmet, skill, travel, material, social, life
    ]

    static let experience   = TodoLabel(name: "体験", color: ColorValue(hex: ""))
    static let gourmet      = TodoLabel(name: "グルメ", color: ColorValue(hex: ""))
    static let skill        = TodoLabel(name: "技能", color: ColorValue(hex: ""))
    static let travel       = TodoLabel(name: "旅行", color: ColorValue(hex: ""))
    static let material     = TodoLabel(name: "物", color: ColorValue(hex: ""))
    static let social       = TodoLabel(name: "社会", color: ColorValue(hex: ""))
    static let life         = TodoLabel(name: "生活", color: ColorValue(hex: ""))
}
