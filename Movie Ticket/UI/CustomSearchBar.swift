//
//  CustomSearchBar.swift
//  Movie Ticket
//
//  Created by Farhan Sadik on 12/2/23.
//

import SwiftUI

struct CustomSearchBar: View {
    @State var searchText = ""
    var body: some View {

        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Search",text: $searchText)
            Image(systemName: "mic.fill")
        }.padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .font(.headline)
            .background(.ultraThinMaterial)
            .foregroundColor(.white.opacity(0.6))
            .cornerRadius( 10)
    }
}

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar()
    }
}
