//
//  TajMahalApp.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

@main
struct TajMahalApp: App {
    
    
    /*
     
init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("-- \(fontName)")
            }
     }
    }
     */
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}

#Preview() {
    WelcomeView()
}
