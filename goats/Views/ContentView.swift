//
//  ContentView.swift
//  goats
//
//  Created by Kevin W Evans on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var goatsVM = GoatsViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(goatsVM.goatData.indices, id: \.self) { idx in
                    NavigationLink(
                        destination: GoatDetailView(goat: $goatsVM.goatData[idx]),
                        label: {
                            HStack {
                                if (goatsVM.goatData[idx].liked){
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                }
                                Text(goatsVM.goatData[idx].name)
                            }
                        })
                }
                .navigationTitle("Goats")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
