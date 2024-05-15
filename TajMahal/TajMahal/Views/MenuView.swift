//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Text("Menu")
                .font(Font.custom("Plus Jakarta Sans", size: 18))
                .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            
            List {
                Section {
                    HStack {
                        Image("Samosas")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 112, height: 86)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack (alignment: .leading, spacing: 10.0) {
                            
                            Text("Samosas aux Légumes")
                                .font(Font.custom("Plus Jakarta Sans", size: 14))
                                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                            
                            
                            Text("Délicieux chaussons frits garnis de légumes épicés")
                                .font(Font.custom("Plus Jakarta Sans", size: 12))
                                .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                            HStack {
                                Text("5,50€")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                                Spacer()
                                
                                Text("Piments")
                                
                            }
                            .font(Font.custom("Plus Jakarta Sans", size: 12))
                            
                            
                        }
                        .padding(10.0)
                        .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                        
                    }
                    
                } header: {
                    Text("Entrées")
                    
                }
                
            }
        }
        
    }
}
#Preview {
    MenuView()
}
