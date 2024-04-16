//
//  tablesView.swift
//  Componentes
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI
struct Artistas: Identifiable{
    let id: Int
    let name: String
    let votos: Int
}


struct tablasView: View {
    @State private var user = [
        Artistas(id: 1, name: "Mecano", votos: 10),
        Artistas(id: 2, name: "Justin Bieber", votos: 90),
        Artistas(id: 3, name: "Lola Indigo", votos: 100)
    ]
    
    //creamo un criterio de ordenacion
    @State private var sortOrden = [KeyPathComparator(\Artistas.name)]
    
    //Artista seleccionado
    @State private var selection: Artistas.ID? = 2 //seleccionado por defecto
    
    var body: some View {
        Table(selection: $selection, sortOrder: $sortOrden){
            //Columnas
            TableColumn("Nombre artista", value: \.name)
            TableColumn("Votos", value: \.votos){ user in
                Text(String(user.votos))
            }
            .width(min: 50, max: 100)
        } rows: {
            ForEach(user)
        }
        .onChange(of: sortOrden, initial: false) { orderAplicar, _ in
            user.sort(using: orderAplicar)
        }
        
        
    }
}

#Preview {
    tablasView()
}
