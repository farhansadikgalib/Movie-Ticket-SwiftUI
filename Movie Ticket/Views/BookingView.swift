//
//  BookingView.swift
//  Movie Ticket
//
//  Created by Farhan Sadik on 14/2/23.
//

import SwiftUI

struct BookingView: View {
    @Environment(\.dismiss) var dismiss
    @State var selectedDate = false
    @State var bindingSelection =  false
    @State var selectedHour = false
    
    @State var gradient = [Color("backgroundColor2").opacity(0), Color("backgroundColor2"), Color("backgroundColor2"),Color("backgroundColor2")]
    var body: some View {

        NavigationView  {
            ZStack{
                Image("booking").resizable().aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                VStack{
                    LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom).frame(height: 600)
                }.frame(maxHeight: .infinity, alignment: .bottom)
                
                
                VStack(spacing: 0.0){
                    HStack{
                        CircleButton(action: {
                            dismiss()
                        }, image: "arrow.left")
                        Spacer()
                        CircleButton(action: {}, image: "ellipsis")
                    }.padding(EdgeInsets(top: 45, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Doctor Strange").font(.title3).fontWeight(.bold).foregroundColor(.white).padding(.top, 200)
                    
                    Text("in the Mulitverse of Madenss").font(.title3).foregroundColor(.white)
                    
                    Text("Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white).padding(30)
                    
                    Text("Select date and Time").font(.title3).foregroundColor(.white)
                    
                    HStack(alignment: .top, spacing: 20.0){
                    
                        DateButton(weekDay:  "TUE", numDay: "22", isSelected: $bindingSelection).padding(.top, 90)
                        DateButton(weekDay:  "WED", numDay: "23", isSelected: $bindingSelection).padding(.top, 70)
                        DateButton(weekDay:  "THR", numDay: "24", width: 70, height: 100, isSelected: $selectedDate, action: {
                            withAnimation(.spring()){
                                selectedDate.toggle()
                            }
                        }).padding(.top, 30)
                        DateButton(weekDay:  "FRI", numDay: "25", isSelected: $bindingSelection).padding(.top, 70)
                        DateButton(weekDay:  "SAT", numDay: "26", isSelected: $bindingSelection).padding(.top, 90)


                        
                    }
                    
                    
                    HStack(alignment: .top,spacing: 20){
                        TimeButton(hour: "16:00" ,isSelected: $bindingSelection).padding(.top, 20)
                        TimeButton(hour: "16:00" ,isSelected: $bindingSelection)
                        TimeButton(hour: "16:00" ,  width: 70, height: 40, isSelected: $selectedHour, action: {
                            withAnimation(.spring()){
                                selectedHour.toggle()
                            }
                        }).padding(.top, -20)
                        TimeButton(hour: "16:00" ,isSelected: $bindingSelection)
                        TimeButton(hour: "16:00" ,isSelected: $bindingSelection).padding(.top, 20)
            
                    }
            
                    NavigationLink{
                        Text("Seat View")
                    } label: {
                        LargeButton().padding(20)
                            .offset(y: selectedDate && selectedHour ? 0 : 200)
                                        }
                    
                                    
                }.frame(maxHeight: .infinity, alignment: .top)
                
                
                
                
            }.background(Color("backgroundColor2"))
                .ignoresSafeArea()
        }.navigationBarBackButtonHidden(true)

    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
