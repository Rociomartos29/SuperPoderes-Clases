//
//  HeroRowView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct HeroRowView: View {
    var data: Hero
    var body: some View {
        HStack{
            Image(systemName: "person")
            Text(data.name)
        }
    }
}

#Preview {
    HeroRowView(data: Hero(name:" Spiderman"))
}
