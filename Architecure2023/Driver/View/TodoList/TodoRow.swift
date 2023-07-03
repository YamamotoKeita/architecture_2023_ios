import SwiftUI

struct TodoRow: View {
    @State var todo: Todo

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(todo.content)
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    Text(todo.label.name)
                }
                Text(">")
            }
            .padding()
            Divider()
        }
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TodoRow(todo: TodoRepositoryMock.testData.first!)
            .previewLayout(.fixed(width: 320, height: 70))
    }
}
