//
//  MenuListRow2.swift
//  TajMahal
//
//  Created by Margot Pasquali on 17/05/2024.
//

import SwiftUI

struct MenuListRow: View {
    let viewModel: ViewModel = ViewModel()
    var dish: Dish
    
    var body: some View {
            ZStack {
                HStack {
                    Spacer()
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 112, height: 86)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack (alignment: .leading, spacing: 10.0) {
                        
                        Text(dish.name)
                            .font(Font.custom("Plus Jakarta Sans", size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        
                        
                        Text(dish.description)
                            .font(Font.custom("Plus Jakarta Sans", size: 12))
                            .fontWeight(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
                            .lineLimit(2)
                        HStack {
                            Text(dish.price)
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
        
        }}


#Preview {
    List {
        MenuListRow(dish: ViewModel().apetizerArray[0])
        MenuListRow(dish: ViewModel().apetizerArray[1])
    }
    
}
