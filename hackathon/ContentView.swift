import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .inicio
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Interceptis")
                    .font(.system(size: 40))
                    .frame(width: 400)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            Spacer()
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
