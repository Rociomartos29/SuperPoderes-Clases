//
//  Lista01View.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct Lista01View: View {
    var body: some View {
        List{
            Text("Thor")
            Text("Spiderman")
            Text("Cap. Ámerica")
        }
        .listStyle(.automatic)
    }
}

#Preview {
    Lista01View()
}
