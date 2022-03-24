//
//  ContentView.swift
//  goats
//
//  Created by Kevin W Evans on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @StateObject private var goatsVM = GoatsViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(searchResults, id:\.self) { goat in
                    NavigationLink(
                        destination: GoatDetailView(),
                        label: {
                            HStack {
                                if (goat.liked){
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                }
                                Text(goat.name)
                            }
                        })
                }
                .searchable(text: $searchText)
                .navigationTitle("Goats")
            }
        }
    }
    
    var searchResults: [Goat] {
        if searchText.isEmpty {
            return goatsVM.goatData
        } else {
            return goatsVM.goatData.filter { $0.name.contains(searchText)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
