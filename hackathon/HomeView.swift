import SwiftUI



struct HomeView: View {
    
    @State private var prompt_f:String = ""
    @State private var response = ""
    let openAI = OpenAIConnector()
    
    private func performOpenAISearch(prompt_f:String) async {
        await  openAI.processPrompt(prompt_f: prompt_f)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Text(response)
                Spacer()
                TextField("Escribe", text: $prompt_f)
                    .onSubmit {
                        if !prompt_f.isEmpty{
                            Task {
                                await performOpenAISearch(prompt_f: prompt_f)
                                response = jsString
                            }
                        }
                    }
                    .padding()
                    .font(.system(size: 30))
            }.navigationTitle("INTERCEPTIS")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
