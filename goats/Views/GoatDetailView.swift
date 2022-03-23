//
//  GoatDetailView.swift
//  goats
//
//  Created by Kevin W Evans on 23/03/2022.
//

import SwiftUI

struct GoatDetailView: View {
    @Binding var goat: Goat
    var body: some View {
        Text("Hello, \(goat.name)")
    }
}

//struct GoatDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        GoatDetailView(goat: Goat(name: "Foxy", image: "", otherNames: "Barry", origin: "Barry Island", purpose: "Eat stuff", references: ""))
//    }
//}
