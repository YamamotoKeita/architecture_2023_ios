import SwiftUI

struct TodoRow: View {
    @State var todo: Todo

    var body: some View {
        HStack {
            VStack {
                Text(todo.content)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(todo.label.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            ZStack {
                VStack {
                    Text("07/05")
                    Spacer()
                }
                Text(">")
            }
        }
        .padding()
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TodoRow(todo: TodoRepositoryMock.testData.first!)
            .previewLayout(.fixed(width: 320, height: 70))
    }
}
