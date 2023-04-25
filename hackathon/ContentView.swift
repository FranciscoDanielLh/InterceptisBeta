import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .inicio
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem({Image("Home")})
            DocumentsView()
                .tabItem({Image("Docs")})
            ChatBotView()
                .tabItem({Image("Foro")})
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
