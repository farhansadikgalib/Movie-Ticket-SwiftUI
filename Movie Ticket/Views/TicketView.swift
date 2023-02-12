//
//  TicketView.swift
//  Movie Ticket
//
//  Created by Farhan Sadik on 8/2/23.
//

import SwiftUI

struct TicketView: View {

    @State var animate = false
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

            
            
            VStack(spacing: 30){
                Text("Mobile Ticket").font(.title3).foregroundColor(.white).fontWeight(.bold)
                
                
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.").frame(width: 248).multilineTextAlignment(.center).foregroundColor(.white)
                
            } .padding(.horizontal,20)
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            
            
            Tickets().padding(.top,40)
            
            
        }
        
       
        .background(
        
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"),Color("backgroundColor2")]) , startPoint: .top, endPoint: .bottom)
        )
        


    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
