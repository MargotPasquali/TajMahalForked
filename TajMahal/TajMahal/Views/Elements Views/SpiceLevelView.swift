//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by Margot Pasquali on 16/05/2024.
//

import SwiftUI

struct SpiceLevelView: View {
    let spiceNumberTotal: Int = 3
    var spiceLevel: SpiceLevel
    var body: some View {
        
        HStack {
            ForEach (0..<spiceLevel.rawValue) { _ in
                Image("Piment rouge")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 12, height: 12)
            }
            ForEach (0..<spiceNumberTotal - spiceLevel.rawValue) { _ in
                Image("Piment gris")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 12, height: 12)
            }
        }
    }
}

#Preview {
    SpiceLevelView(spiceLevel: .light)
}
