//
//  hstackView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct hstackView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Mi nombre")
                    .bold()
                Text("Rocío")
                    .font(.title)
                    .foregroundStyle(Color.blue)
                
            }
            
            .frame(width: 300, height: 150)        .background(Color.yellow)
            HStack{
                Text("Mi Apellido")
                    .bold()
                Text("Martos")
                    .font(.title)
                    .foregroundStyle(Color.blue)
                
            }
            
            .frame(width: 300, height: 150)        .background(Color.red)
            
        }
        
    }
        
}

#Preview {
    hstackView()
}
