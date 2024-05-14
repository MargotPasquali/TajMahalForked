//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
            HStack {
                VStack (alignment: .leading){
                    Text("Restaurant Indien")
                        .font(.title2)
                    
                    Text("Taj Mahal")
                        .font(.title)
                }
                Spacer()
                Image("Grey Logo")
                
            }
            .padding(20.0)
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "clock")
                        .foregroundColor(.gray)
                    
                    Text("Mardi")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("11h30 - 14h30 . 18h30 - 22h00")
                        .font(.subheadline)
                }
                
                HStack {
                    Image(systemName: "takeoutbag.and.cup.and.straw")
                        .foregroundColor(.gray)
                    
                    Text("Type de service")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("A emporter")
                        .font(.subheadline)
                }
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(.gray)
                    
                    Text("12 avenue de la Brique - 75010 Paris")
                        .font(.subheadline)
                }
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(.gray)
                    
                    Text("www.tajmahal.fr")
                        .font(.subheadline)
                }
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    
                    Text("06 12 34 56 78")
                        .font(.subheadline)
                }
                
            }
            .padding()
            
            Spacer()
            
            HStack {
                NavigationLink {
                    MenuView()
                } label : {
                    Spacer()
                    Text("Accéder au menu")
                    Spacer()
                }
                .background(Color("CustomRed"))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/))
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                .buttonStyle(.bordered)
                .padding(10.0)
                .foregroundStyle(.white)
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
                
            

        }
    }
}

#Preview {
    WelcomeView()
}
