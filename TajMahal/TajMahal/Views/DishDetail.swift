//
//  CourseDetail.swift
//  TajMahal
//
//  Created by Margot Pasquali on 13/05/2024.
//

import SwiftUI
struct DishDetail: View {
    
    var dish: Dish  // S'attend à un plat

    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                NavigationLink {
                    MenuView()
                        .navigationBarBackButtonHidden(true)
                } label : {
                    
                    Image("Back button")
                        .font(Font.custom("Plus Jakarta Sans", size: 16))
                        .fontWeight(.heavy)
                    
                    
                }
                
                Text(dish.name)
                    .font(Font.custom("Plus Jakarta Sans", size: 18))
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                Spacer()
                Spacer()
            }
            .padding(10.0)
            HStack {
                Spacer()
                ZStack(alignment: .topTrailing) {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 335, height: 467)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Rectangle()
                        .foregroundColor(Color.white)  // Assurez-vous que cette couleur correspond à l'arrière-plan de votre liste
                        .frame(width: 74, height: 22)
                        .cornerRadius(11)  // Coins arrondis
                        .padding(10)
                    
                    SpiceLevelView(spiceLevel: dish.spiceLevel)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 20))
                }
                Spacer()
            }
            VStack(alignment: .leading, spacing: 6.0) {
                Spacer()
                Spacer()
                Text("Allergènes")
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                
                Text(dish.allergens)
                Spacer()
                Divider()
                Spacer()
                Text("Ingrédients")
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                Text(dish.ingredients)
                Spacer()
                Spacer()
            }
        }.padding()
            .font(Font.custom("Plus Jakarta Sans", size: 12))
            .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
            
    }
}
#Preview {
    DishDetail(dish: ViewModel().apetizerArray[0])
}
