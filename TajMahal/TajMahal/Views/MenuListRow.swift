//
//  MenuListRow.swift
//  TajMahal
//
//  Created by Margot Pasquali on 16/05/2024.
//

import SwiftUI

struct MenuListRow: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
                        
        List(viewModel.apetizerArray, id: \.name) { dish in
            Section {
                HStack {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 112, height: 86)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack (alignment: .leading, spacing: 10.0) {
                        
                        Text(dish.name)
                            .font(Font.custom("Plus Jakarta Sans", size: 14))
                            .fontWeight(.medium)
                        
                        
                        Text(dish.description)
                            .font(Font.custom("Plus Jakarta Sans", size: 12))
                            .fontWeight(.light)
                        HStack {
                            Text("5,50€")
                                .fontWeight(.medium)
                            Spacer()
                            
                            Text("Piments")
                            
                        }
                        .font(Font.custom("Plus Jakarta Sans", size: 12))
                        
                        
                    }
                    .padding(10.0)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                    
                }
                
            }
            
        }
        
    }
}


#Preview {
    MenuListRow()
    }
