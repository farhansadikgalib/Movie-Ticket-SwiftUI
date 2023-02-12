//
//  HomeView.swift
//  Movie Ticket
//
//  Created by Farhan Sadik on 12/2/23.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false
    
    @State var  posters1: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]

    @State var posters2: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]

    @State var posters3: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]


    var body: some View {
        
        
        ZStack{
            
            
            
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 40 : 100)
                .offset(x: animate ? -60 : -130,y: animate ? -40 : -100)
                .task {
                    withAnimation(.easeIn(duration: 5).repeatForever()){
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 40 : 100)
                .offset(x: animate ? 60 : 130,y: animate ? 40 :  100)

            
            
            
            VStack{
                
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 30, bottom: 20, trailing: 20))
                
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        ScrollSection(title: "Now Playing",posters: posters1)
                        ScrollSection(title:"Coming soon",posters: posters2)
                        ScrollSection(title: "Top Movies",posters: posters3 )
                        ScrollSection(title: "Favourite",posters: posters1)

                    }.padding(.bottom, 90)
                }
                
                 
                
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
        }.background(LinearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2")], startPoint: .top, endPoint: .bottom))

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
