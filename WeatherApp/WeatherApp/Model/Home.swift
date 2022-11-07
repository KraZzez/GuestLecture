//
//  Home.swift
//  WeatherApp
//
//  Created by Ludvig Krantzén on 2022-11-07.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        ZStack {
            GeometryReader { proxy in
                Image("ball")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
            .ignoresSafeArea()
            // Blue image
            .overlay(.ultraThinMaterial)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    VStack(alignment: .center, spacing: 5){
                        
                        Text("Jönköping")
                            .font(.system(size: 35))
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                        Text("15°")
                            .font(.system(size: 35))
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                        Text("Cloudy")
                            .foregroundStyle(.secondary)
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                        Text("H:103°L:105°")
                            .foregroundStyle(.primary)
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                    }
                    VStack(spacing: 8){
                        
                        CustomStackView {
                            
                            Label {
                                
                                Text("Hourly Forecast")
                                
                            } icon: {
                                Image(systemName: "clock")
                            }
                            
                        } contentView: {
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack(spacing: 15){
                                    
                                    VStack(spacing:15){
                                        
                                        Text("12 PM")
                                            .font(.callout.bold())
                                            .symbolVariant(.fill)
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(.white, .yellow)
                                        Image(systemName: "sun.min")
                                            .font(.title2)
                                            .symbolVariant(.fill)
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(.yellow, .white)
                                            .frame(height: 30)
                                        Text("16")
                                            .font(.callout.bold())
                                            .foregroundStyle(.white)
                                    }
                                }
                            }
                        }

                    }
                }
                .padding(.top,25)
                .padding([.horizontal,.bottom])
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
