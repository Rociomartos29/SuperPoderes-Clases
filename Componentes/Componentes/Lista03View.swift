//
//  Lista03View.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct Hero: Identifiable {
    let id: UUID = UUID()
    let name: String
}

struct Lista03View: View {
    
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Cap. Ámerica")
    ]
    var body: some View {
        List{
            ForEach(heros) { hero in
                /*@START_MENU_TOKEN@*/Text(hero.name)/*@END_MENU_TOKEN@*/
            }
        }
    }
}

#Preview {
    Lista03View()
}
