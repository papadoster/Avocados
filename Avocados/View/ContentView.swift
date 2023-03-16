//
//  ContentView.swift
//  Avocados
//
//  Created by Александр Карпов on 14.03.2023.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                Spacer()
                
                //MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                        
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif, weight: .bold))
            .foregroundColor(Color("ColorGreenAddaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
