//
//  MenuView2.swift
//  TajMahal
//
//  Created by Margot Pasquali on 17/05/2024.
//

import SwiftUI

struct MenuView2: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationSplitView {
            List {
                Section(header: Text("Entrées")) {
                    ForEach(viewModel.apetizerArray, id: \.name) { dish in
                        ZStack {
                            
                            NavigationLink {
                                DishDetail(dish: dish)
                                    .navigationBarBackButtonHidden(true)
                                    

                            } label: {
                                MenuListRow2(dish: dish)
                            }
                            
                            Rectangle()
                                .foregroundColor(Color(red: 0.945, green: 0.949, blue: 0.966))  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                                    .frame(width: 30, height: 60)
                                    .offset(x: 170)  // // Ajustez cet offset pour bien couvrir le chevron
                        

                        }
                        .listRowBackground(Color.clear)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .buttonStyle(PlainButtonStyle())  // Essayer de réduire l'apparence par défaut

                        
                    }
                    .listStyle(.plain)
                }

                Section(header: Text("Plats")) {
                    ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                        NavigationLink {
                            DishDetail(dish: dish)
                        } label: {
                            MenuListRow2(dish: dish)
                        }
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
        MenuView2()
    }
}

