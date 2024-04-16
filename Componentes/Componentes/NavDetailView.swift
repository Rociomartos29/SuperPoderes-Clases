//
//  NavDetailView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct NavDetailView: View {
    let heros = [
        Hero(name: "Thor"),
        Hero(name: "Spiderman"),
        Hero(name: "Cap. Ámerica")
    ]
    var body: some View {
        NavigationStack {
            List{
                ForEach(heros){ data in
                    NavigationLink {
                        HeroDetailView(data: data)
                        
                    } label: {
                        HeroRowView(data: data)
                    }
                    
                    
                }
                .navigationTitle("Heros List")
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button("Filter"){}
                }
                
            }
            .navigationBarItems(leading: HStack{
                Button(action: {}, label: {
                    Text("Filtrar")
                })
            })
        }
    }
}

#Preview {
    NavDetailView()
}
