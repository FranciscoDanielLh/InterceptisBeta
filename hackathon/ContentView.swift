import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .inicio
    
    var body: some View {
        HStack(spacing: 10) {
            Text("Intercpetis")
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.blue)
        Spacer(minLength: 2)
        
        TabView {
            HomeView()
                .tabItem({Image("Home")})
            DocumentsView()
                .tabItem({Image("Docs")})
            LoginView()
                .tabItem({Image("Foro")})
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
