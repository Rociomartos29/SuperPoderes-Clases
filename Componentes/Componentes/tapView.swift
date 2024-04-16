//
//  tapView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct tapView: View {
    var body: some View {
        TabView{
            botonView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Boton")
                }
            
            Lista04View()
                .tabItem {
                    Image(systemName: "bell.circle.fill")
                    Text("Adios")
                }
            
        }

    }
}

#Preview {
    tapView()
}
