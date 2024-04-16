//
//  Imagen02View.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct Imagen02View: View {
    var body: some View {
        ZStack{
            Image(.linterna)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .cornerRadius(50)
            Image(decorative: "")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .cornerRadius(50)
                .opacity(0.3)
            
        }
    }
}

#Preview {
    Imagen02View()
}
