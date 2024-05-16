//
//  CourseDetail.swift
//  TajMahal
//
//  Created by Margot Pasquali on 13/05/2024.
//

import SwiftUI

struct DishDetail: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        Text(viewModel.apetizerArray[0].name)
            .font(.title)
            .multilineTextAlignment(.leading)
        Image("Tikka Masala")
            .resizable()
            .aspectRatio(contentMode: .fill) // Garde les proportions de l'image tout en la remplissant
            .frame(width: 300, height: 400) // Définit la taille de l'image
            .clipShape(RoundedRectangle(cornerRadius: 10)) // Applique des bords arrondis avec un rayon de 10

        Spacer()
    }
}

#Preview {
    DishDetail()
}
