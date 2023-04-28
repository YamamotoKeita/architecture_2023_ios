import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewModel()
    @State var isFilterShown = false
    @State var isAddTodoShown = false

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                Text("Todo")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                .background(Color.white)
                .shadow(radius: 2, y: 3)

                HStack {
                    Spacer()
                    Button(action: {
                        isFilterShown = true
                    }) {
                        Text("絞り込み▼")
                            .padding()
                            .foregroundColor(.blue)
                            .background(.white)
                            .cornerRadius(50)
                    }
                }

                List(viewModel.todos, id: \.content) { todo in
                    TodoRow(todo: todo)
                        .listRowInsets(EdgeInsets())
                }
                .listStyle(PlainListStyle())
            }
            .background(Color.backgroundColor)

            // Floating Action button
            Button(action: {
                isAddTodoShown = true
            }) {
                Text("＋")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: 60, height: 60)
            .background(Color.blue)
            .clipShape(Circle())
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
            .shadow(radius: 2, y: 3)
        }
        .sheet(isPresented: $isAddTodoShown) {
            LaunchView()
        }
        .sheet(isPresented: $isFilterShown) {
            TodoFilterView()
        }
        .onAppear {
            viewModel.show()
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
