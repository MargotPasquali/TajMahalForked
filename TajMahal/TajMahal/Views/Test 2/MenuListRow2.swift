//
//  MenuListRow2.swift
//  TajMahal
//
//  Created by Margot Pasquali on 17/05/2024.
//

import SwiftUI

struct MenuListRow2: View {
    let viewModel: ViewModel = ViewModel()
    var dish: Dish
    
    var body: some View {
        Section {
            ZStack {
                Rectangle()
                        .fill(Color.white)  // Couleur de remplissage
                        .frame(width: 335, height: 110)  // Taille du rectangle
                        .cornerRadius(10)  // Coins arrondis
                HStack {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 112, height: 86)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack (alignment: .leading, spacing: 10.0) {
                        
                        Text(dish.name)
                            .font(Font.custom("Plus Jakarta Sans", size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        
                        
                        Text(dish.description)
                            .font(Font.custom("Plus Jakarta Sans", size: 12))
                            .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                        HStack {
                            Text("5,50€")
                                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                            Spacer()
                            
                            SpiceLevelView(spiceLevel: dish.spiceLevel)
                            
                        }
                        .font(Font.custom("Plus Jakarta Sans", size: 12))
                        
                        
                    }
                    .padding(10.0)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                    
                }
            }
        }
        }}

struct MenuListRow2_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MenuListRow2(dish: ViewModel().apetizerArray[0])  // Afficher le premier plat pour la prévisualisation
            MenuListRow2(dish: ViewModel().apetizerArray[1])  // Afficher le deuxième plat pour la prévisualisation

        }
        .padding()  // Ajoute un peu d'espacement autour des éléments pour une meilleure visibilité
    }
}
