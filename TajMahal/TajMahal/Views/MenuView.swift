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
        NavigationSplitView {
            
            List {
                ZStack(alignment: .center) {
                    
                    HStack {
                        Spacer()
                        
                        Text("Menu")
                            .font(Font.custom("Plus Jakarta Sans", size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                    }
                    
                    NavigationLink {
                        WelcomeView()
                            .navigationBarBackButtonHidden(true)
                    } label : {
                        Image("Back button")
                    }
                    Rectangle() // Pour masquer le chevron
                        .foregroundColor(Color(red: 0.949, green: 0.949, blue: 0.967))  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                        .frame(width: 11, height: 38)
                        .offset(x: 170)  // // Ajustez cet offset pour bien couvrir le chevron
                }
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets())
                
                Section(header: Text("Entrées")
                    .font(Font.custom("Plus Jakarta Sans", size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                    .textCase(nil)
                ) {
                    ForEach(viewModel.apetizerArray, id: \.name) { dish in
                        ZStack {
                            Rectangle() // Grand Rectangle Radius
                                .foregroundColor(Color.white)  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                                .frame(width: 335, height: 110)
                                .cornerRadius(10)  // Coins arrondis
                            
                            NavigationLink {
                                DishDetail(dish: dish)
                                    .navigationBarBackButtonHidden(true)
                                
                                
                            } label: {
                                MenuListRow(dish: dish)
                            }
                            
                            
                            
                            Rectangle() // Pour masquer le chevron
                                .foregroundColor(Color.white)  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                                .frame(width: 11, height: 38)
                                .offset(x: 162)  // // Ajustez cet offset pour bien couvrir le chevron
                            
                            
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())  // Essayer de réduire l'apparence par défaut
                        .padding(-5.0)
                        
                        
                    }
                    
                }
                Section(header: Text("Plats principaux")
                    .font(Font.custom("Plus Jakarta Sans", size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                    .textCase(nil)
                        
                ) {
                    ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                        ZStack {
                            Rectangle() // Grand Rectangle Radius
                                .foregroundColor(Color.white)  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                                .frame(width: 335, height: 110)
                                .cornerRadius(10)  // Coins arrondis
                            
                            NavigationLink {
                                DishDetail(dish: dish)
                                    .navigationBarBackButtonHidden(true)
                                
                                
                            } label: {
                                MenuListRow(dish: dish)
                            }
                            
                            
                            
                            Rectangle() // Pour masquer le chevron
                                .foregroundColor(Color.white)  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                                .frame(width: 11, height: 38)
                                .offset(x: 162)  // // Ajustez cet offset pour bien couvrir le chevron
                            
                            
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())  // Essayer de réduire l'apparence par défaut
                        .padding(-5.0)
                        
                        
                    }
                }
                
                
                
            }
            
            
        } detail: {
            // Détail de vue ici si nécessaire
            
        }
    }
}


// Preview
struct MenuView2_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
