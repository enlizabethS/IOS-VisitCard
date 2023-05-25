//
//  ContentView.swift
//  Visit card
//
//  Created by Elizabeth Stepura on 25.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            ZStack{
                LinearGradient(colors: [.indigo,.indigo,.indigo,.blue],
                        startPoint: .top,
                        endPoint: .center)
                .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image("ava").resizable().aspectRatio(contentMode: .fill)
                        .foregroundColor(Color(hue: 0.58, saturation: 0.415, brightness: 0.937))
                        .frame(width: 200.0,height: 200.0)
                        .clipShape(Circle()).overlay(Circle().stroke(lineWidth: 4.5)).foregroundColor(Color(hue: 0.576, saturation: 0.369, brightness: 0.96))
                    Text("Elizabeth Stepura")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text("Java developer")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color(hue: 0.651, saturation: 0.813, brightness: 0.472))
                    Divider()
                    Card(image: "phone.fill", message: "+7(925)204-92-10)")
                    Card(image: "envelope.fill", message: "elisaveta.stepura@mail.ru")
                }
                
            }
            
    }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius:25).padding(.horizontal).frame(height: 50).foregroundColor(Color(hue: 0.576, saturation: 0.369, brightness: 0.96))
            .overlay(HStack {
                Image(systemName:image).foregroundColor(Color(red: 0.082, green: 0.336, blue: 0.84))
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.082, green: 0.336, blue: 0.84))
                
            })
    }
}
