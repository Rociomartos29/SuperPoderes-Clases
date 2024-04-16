//
//  HeroDetailView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct HeroDetailView: View {
    var data: Hero
    var body: some View {
        VStack{
            Text("Soy \(data.name)")
        }
        .background(Color.blue)
        .padding()
    }
}

#Preview {
    HeroDetailView(data: Hero(name: "Superman"))
}
