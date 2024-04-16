//
//  scrolView.swift
//  Componentes
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

struct scrolView: View {
    let colors: [Color] = [.red, .green, .blue]
    var body: some View {
        ScrollView{
            ForEach(0..<100){i in
                Text("Ejemplo de \(i)")
                    .font(.title)
                    .frame(width: 200, height: 200)
                    .background(colors[i % colors.count])
                    .id(i)
                
            }
        }
    }
}
#Preview {
    scrolView()
}
