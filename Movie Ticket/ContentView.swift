//
//  ContentView.swift
//  Movie Ticket
//
//  Created by Farhan Sadik on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var currtentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
  
        NavigationView {
            VStack{
                TabView(selection: $currtentTab){
                    HomeView().tag(Tab.home)
                    
                    Text("Location").tag(Tab.location)
                    TicketView().tag(Tab.ticket)
                    
                    Text("Category").tag(Tab.category)
                    Text("Profile").tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currtentTab)
                
            }.ignoresSafeArea(.keyboard)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
