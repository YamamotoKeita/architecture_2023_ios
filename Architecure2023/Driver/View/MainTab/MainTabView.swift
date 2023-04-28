import SwiftUI

struct MainTabView: View {
    @StateObject var viewModel = MainTabViewModel()
    
    var body: some View {
        TabView {
            TodoListView()
                .tabItem {
                    Label("Todo", systemImage: "tray.and.arrow.down.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Setting", systemImage: "tray.and.arrow.up.fill")
                }
        }
        .onAppear {
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
