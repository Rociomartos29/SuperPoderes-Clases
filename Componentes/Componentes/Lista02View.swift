//
//  Lista02View.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct Lista02View: View {
    let heros = ["Thor", "Spiderman", "Cap. Ámerica"]
    @State var heroSelected: String = ""
    @State var showAlert = false
    var body: some View {
        List{
            ForEach(heros, id: \.self){data in
                Text(data)
            }
        }
        Divider()
        List{
            ForEach(heros, id: \.self){data in
                Button(action: {
                    self.heroSelected = data
                    self.showAlert = true
                }, label: {
                    Text(data)
                })
            }
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Seleccionado \(heroSelected)"))
        })
    }
}

#Preview {
    Lista02View()
}
