//
//  HeaderView.swift
//  Avocados
//
//  Created by Александр Карпов on 16.03.2023.
//

import SwiftUI

struct HeaderView: View {
    
    var header: Header
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFit()
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 0) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation, value: showHeadline)
            .onAppear {
                showHeadline = true
            }
            
        }
        .frame(width: 480, height: 320, alignment: .center)
        .onDisappear {
            showHeadline = false
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[0])
            .previewLayout(.sizeThatFits)
    }
}
