//
//  ContentView.swift
//  MatchingCardExample
//
//  Created by cano on 2023/01/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var profiles = [
        
        ProfileData(name: "Annie Watson", image: "p0", age: "27", offset: 0),
        ProfileData(name: "Clarie", image: "p1", age: "19", offset: 0),
        ProfileData(name: "Catherine", image: "p2", age: "25", offset: 0),
        ProfileData(name: "Emma", image: "p3", age: "26", offset: 0),
        ProfileData(name: "Juliana", image: "p4", age: "20", offset: 0),
        ProfileData(name: "Kaviya", image: "p5", age: "22", offset: 0),
        ProfileData(name: "Jill", image: "p6", age: "18", offset: 0),
        ProfileData(name: "Terasa", image: "p7", age: "29", offset: 0),
    ]
    
    var body: some View {
        VStack {
            
            HStack(spacing: 15){
                
                Button(action: {}, label: {
                    Image("menu")
                        .renderingMode(.template)
                })
                
                Text("Blind Dating")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image("noti")
                        .renderingMode(.template)
                })
            }
            .foregroundColor(.black)
            .padding()

            GeometryReader { g in
                ZStack{
                    ForEach(profiles.reversed()) { profile in
                        ProfileView(profile: profile,frame: g.frame(in: .global))
                    }
                }
            }
            .padding([.horizontal,.bottom])
        }
        .background(Color.black.opacity(0.06)
        .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
