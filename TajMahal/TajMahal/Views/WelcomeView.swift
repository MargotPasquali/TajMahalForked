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
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            VStack (alignment: .leading) {
                HStack {
                    Text("Mardi")
                    .font(.subheadline)
                    Text("11h30 - 14h30 . 18h30 - 22h00")
                    .font(.subheadline)
                }
                
                HStack {
                    Text("Type de service")
                    .font(.subheadline)
                    Text("A emporter")
                    .font(.subheadline)
                }
                
                Text("12 avenue de la Brique - 75010 Paris")
                    .font(.subheadline)
                Text("www.tajmahal.fr")
                    .font(.subheadline)
                Text("06 12 34 56 78")
                    .font(.subheadline)
            }
            
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
