//
//  MenuView2.swift
//  TajMahal
//
//  Created by Margot Pasquali on 17/05/2024.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()

    @State
    private var shouldNavigateToDishView = false

    @State
    private var dishToNavigateTo: Dish?

    var body: some View {
        NavigationLink(isActive: $shouldNavigateToDishView) {
            if let dishToNavigateTo {
                DishDetail(dish: dishToNavigateTo)
            }
        } label: {
            List {
                Section {
                    section(for: viewModel.apetizerArray)
                } header: {
                    Text("Entrées")
                        .font(Font.custom("Plus Jakarta Sans", size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                        .textCase(nil)
                }

                Section {
                    section(for: viewModel.mainCourseArray)
                } header: {
                    Text("Plats principaux")
                        .font(Font.custom("Plus Jakarta Sans", size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.0, saturation: 0.171, brightness: 0.436))
                        .textCase(nil)
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
        .listRowInsets(.none)
    }

    @ViewBuilder
    private func section(for dishes: [Dish]) -> some View {
        ForEach(dishes, id: \.name) { dish in
            Button {
                navigate(to: dish)
            } label: {
                MenuListRow(dish: dish)
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
            .listRowInsets(.none)
            .buttonStyle(PlainButtonStyle())  // Essayer de réduire l'apparence par défaut
        }
    }

    private func navigate(to dish: Dish) {
        dishToNavigateTo = dish

        shouldNavigateToDishView.toggle()
    }
}

#Preview {
    NavigationStack {
        MenuView()
    }
}
