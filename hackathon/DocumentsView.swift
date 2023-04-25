//
//  DocumentsView.swift
//  hackathon
//
//  Created by CEDAM19 on 25/04/23.
//

import SwiftUI

struct DocumentsView: View {
    private var documentsList = legalDocuments
    @State var searchText = ""
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(documents, id: \.self) { document in
                    HStack{
                        
                        if (document.type == "pdf") {
                            Image(systemName: "doc.fill")
                        } else {
                            Image(systemName: "link")
                        }
                        
                        Text(document.name)
                            .frame(width: 300)
                        
                        
                        NavigationLink("", value: URL(string: document.type)!)
                            .foregroundColor(.blue)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Documentos")
        })
    }
    
    var documents: [Document] {
        
        return searchText == "" ? documentsList :
        documentsList.filter({
            $0.name.lowercased().contains(searchText.lowercased())
        })
    }
    
}

struct DocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsView()
    }
}
