//
//  CustomStackView.swift
//  WeatherApp
//
//  Created by Ludvig Krantzén on 2022-11-07.
//

import SwiftUI

struct CustomStackView<Title: View,Content: View>: View {
    var titleView: Title
    var contentView: Content
    
    init(@ViewBuilder titleView: @escaping ()->Title,@ViewBuilder contentView:@escaping ()-> Content){
        
        self.contentView = contentView()
        self.titleView = titleView()
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            titleView
                .font(.callout)
                .lineLimit(1)
                .frame(height:38)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.ultraThinMaterial,in: CustomCorner(corners: [.topLeft,.topRight], radius: 12))
            
            VStack {
                
                Divider()
                
                contentView
                    .padding()
            }
            .background(.ultraThinMaterial,in:
                CustomCorner(corners: [.bottomLeft,.topRight], radius: 12))
        }
        .colorScheme(.dark)
        
    }
}

struct CustomStackView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
