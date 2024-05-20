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
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 335, height: 423)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack {
                VStack (alignment: .leading, spacing: 4.0){
                    Text("Restaurant Indien")
                    
                        .font(Font.custom("Plus Jakarta Sans", size: 12))
                        .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    
                    
                    Text("Taj Mahal")
                        .font(Font.custom("Plus Jakarta Sans", size: 18))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Image("Grey Logo")
                
            }
            .padding(10)
            
            .padding(10.0)
            
            VStack (alignment: .leading, spacing: 10.0) {
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
                    
                    Text(verbatim:"www.tajmahal.fr")
                        .font(.subheadline)
                        .lineSpacing(30)
                }
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    
                    Text("06 12 34 56 78")
                        .font(.subheadline)
                }
                
            }
            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
            .padding()
            .font(Font.custom("Plus Jakarta Sans", size: 12))
            .fontWeight(.medium)
            
            
            Spacer()
            
            HStack {
                NavigationLink {
                    MenuView2()
                } label : {
                    Spacer()
                    Text("Accéder au menu")
                        .font(Font.custom("Plus Jakarta Sans", size: 16))
                        .fontWeight(.heavy)
                    
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



