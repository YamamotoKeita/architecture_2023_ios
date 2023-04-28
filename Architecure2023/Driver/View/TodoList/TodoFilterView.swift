import SwiftUI

struct TodoFilterView: View {
    let condition: TodoFilter = TodoFilter(labels: [])
    let accepted: ((TodoFilter) -> Void)? = nil

    var body: some View {
        VStack {
            Text("Filter")
        }
        .onAppear {
            print("onAppear")
        }
    }
}

struct TodoFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TodoFilterView()
    }
}
