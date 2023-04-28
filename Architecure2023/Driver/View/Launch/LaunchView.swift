import SwiftUI

struct LaunchView: View {

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Architecture")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity)
                    .frame(height: geometry.size.height / 2)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentColor)
        .onAppear {
            print("Launch View")
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 mini"))
    }
}
