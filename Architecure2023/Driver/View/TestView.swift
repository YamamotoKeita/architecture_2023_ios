import SwiftUI

struct TestView: View {
    @State var text = "Hello"

    init() {
    }

    var body: some View {
        ZStack {
            // 他のコンテンツを配置するためのメインのビュー
            // ここに必要なコンテンツを追加してください

            VStack {
                // メインコンテンツを追加
            }

            // フローティングアクションボタン
            Button(action: {
                // ボタンがタップされたときのアクションを追加
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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
//        .background(Color.accentColor)
    }
}
extension TestView: TestUseCaseOutput {
    func showText(text: String) {
        self._text.wrappedValue = text
//        self.text = text
//        print(self.text)
    }
}

class TestUseCase {
    var output: TestUseCaseOutput?
    func show() {
        output?.showText(text: "Changed")
    }
}
protocol TestUseCaseOutput {
    func showText(text: String)
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
