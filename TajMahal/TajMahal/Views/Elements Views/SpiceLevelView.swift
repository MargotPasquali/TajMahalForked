//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by Margot Pasquali on 16/05/2024.
//

import SwiftUI

struct SpiceLevelView: View {
    
    var image: Image
    
    var body: some View {
        image
        HStack {
            Image("Piment rouge")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 12, height: 12)
            Image("Piment rouge")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 12, height: 12)
            Image("Piment gris")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 12, height: 12)
        }
    }
}



#Preview {
    SpiceLevelView(image: Image("Piment rouge"))
}
