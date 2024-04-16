//
//  EmpleadoDetailView.swift
//  KeepcodingMultiPlataforma
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

struct EmpleadoDetailView: View {
    let employee: Empleados
    var body: some View {
        VStack{
            #if os(watchOS)
            
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50)
            #else
            Image(systemName: "person")
                .resizable()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: .infinity, minHeight: 100, idealHeight: 200, maxHeight: 300)
            VStack{
                Text(employee.nombre)
                Text(employee.apell1)
                if let apell2 = employee.apell2{
                    Text(apell2)
                }
                Text("\(employee.edad)")
                    .font(.title)
            }
            #endif
        }
        .background(.gray)
        .foregroundColor(.white)
        .padding(20)
    }
}

#Preview {
    EmpleadoDetailView(employee: Empleados(nombre: "Rocio", apell1: "Martos", apell2: "Vela", idPhoto: "", edad: 25))
}
