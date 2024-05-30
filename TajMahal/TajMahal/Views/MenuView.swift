//
//  MenuView2.swift
//  TajMahal
//
//  Created by Margot Pasquali on 17/05/2024.
//

import SwiftUI


struct MenuView: View {
    
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
            
            List {
                createDishRow(dishArray: viewModel.apetizerArray, header: "Entrées")

                createDishRow(dishArray: viewModel.mainCourseArray, header: "Plats principaux")
                
            }.navigationTitle("Menu")
                .navigationBarTitleDisplayMode(.inline)
            
        
    }
    func createDishRow(dishArray: [Dish], header: String) -> some View {
        
        Section {
            ForEach(dishArray, id: \.name) { dish in
                ZStack {
                    Rectangle() // Grand Rectangle Radius
                        .foregroundColor(Color.white)
                        .frame(width: 335, height: 110)
                        .cornerRadius(10)  // Coins arrondis
                    
                    NavigationLink {
                        DishDetail(dish: dish)

                        
                    } label: {
                        MenuListRow(dish: dish)
                    }
                    
                    
                    
                    Rectangle() // Pour masquer le chevron
                        .foregroundColor(Color.white)
                        .frame(width: 11, height: 38)
                        .offset(x: 162)  // // Ajustez cet offset pour bien couvrir le chevron
                    
                    
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .buttonStyle(PlainButtonStyle())  // Essayer de réduire l'apparence par défaut
                .padding(-5.0)
                
                
            }
            
        } header: {
            Text(header)
                .font(Font.custom("Plus Jakarta Sans", size: 14))
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                .textCase(nil)

                    }
        }
    }
        
        
    




#Preview {
    MenuView()
}

