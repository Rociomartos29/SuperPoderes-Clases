//
//  botonView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct botonView: View {
    @State var imagenChange = false
    var body: some View {
        VStack{
            switch imagenChange
            {
            case true:
                Image(systemName: "cloud.rain")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 200, height: 200)
                    .padding()
                
                
            case false:
                Image(systemName: "sun.max")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
                
            }
            
            VStack {
                Button{
                    self.imagenChange.toggle()
                } label: {
                    VStack{
                        Text("Cambiar el tiempo")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                }
            }
        }
    }
}

#Preview {
    botonView()
}
