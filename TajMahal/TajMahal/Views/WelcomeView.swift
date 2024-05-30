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
            Image("Photo Taj Mahal")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 335, height: 423)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack {
                VStack (alignment: .leading, spacing: 4.0){
                    Text("Restaurant Indien")
                        .font(Font.custom("Plus Jakarta Sans", size: 13, relativeTo: .caption))
                        .fontWeight(.light)
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    
                    
                    Text("Taj Mahal")
                        .font(Font.custom("Plus Jakarta Sans", size: 21, relativeTo: .title3))
                        .fontWeight(.bold)
                }
                Spacer()
                Image("Gray Logo")
                
            }
            .padding(10)
            
            .padding(10.0)
            
            VStack (alignment: .leading, spacing: 10.0) {
                HStack {
                    Image(systemName: "clock")
                        .foregroundColor(.gray)
                    
                    Text("Mardi")
                    
                    Spacer()
                    
                    Text("11h30 - 14h30 . 18h30 - 22h00")
                }
                
                HStack {
                    Image(systemName: "takeoutbag.and.cup.and.straw")
                        .foregroundColor(.gray)
                    
                    Text("Type de service")
                    
                    Spacer()
                    
                    Text("A emporter")
                }
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(.gray)
                    
                    Text("12 avenue de la Brique - 75010 Paris")
                }
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(.gray)
                    
                    Text(verbatim:"www.tajmahal.fr")
                        .lineSpacing(30)
                }
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    
                    Text("06 12 34 56 78")
                }
                
            }
            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
            .padding()
            .font(Font.custom("Plus Jakarta Sans", size: 13, relativeTo: .subheadline))
            .fontWeight(.medium)
            
            
            Spacer()
            
            HStack {
                NavigationLink {
                    MenuView()
                } label : {
                    Spacer()
                    Text("Accéder au menu")
                        .font(Font.custom("Plus Jakarta Sans", size: 18))
                        .fontWeight(.heavy)
                    
                    Spacer()
                }
                .background(Color("CustomRed"))
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .padding(EdgeInsets())
                .buttonStyle(.bordered)
                .padding(10.0)
                .foregroundStyle(.white)
                
                .padding(EdgeInsets())
            }
            
            
        }
    }
}


#Preview {
    WelcomeView()
}



