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
                // Volet de navigation listant les entrées
                List(viewModel.apetizerArray, id: \.name) { dish in
                    NavigationLink {
                        DishDetail(dish: dish)
                    } label: {
                        MenuListRow2(dish: dish)
                    }
                }
                .navigationTitle("Entrées")
                
            } detail: {
                // Volet de détail listant les plats principaux
                List(viewModel.mainCourseArray, id: \.name) { dish in
                    NavigationLink {
                        DishDetail(dish: dish)
                    } label: {
                        MenuListRow2(dish: dish)
                    }
                }
                .navigationTitle("Plats Principaux")
            }
        }
    }
    

        
    


// Preview
struct MenuView2_Previews: PreviewProvider {
    static var previews: some View {
        MenuView2()
    }
}
