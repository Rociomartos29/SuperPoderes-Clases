//
//  EmpleadoRowView.swift
//  KeepcodingMultiPlataforma
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

struct EmpleadoRowView: View {
    let emplooyes: Empleados
    var body: some View {
        VStack{
           Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
            #if os(watchOS)
            HStack{
                Spacer()
                Text(emplooyes.nombre)
                
                }
                Spacer()
            #else
        
            HStack{
                Spacer()
                Text(emplooyes.nombre)
                Text(emplooyes.apell1)
                if let apell2 = emplooyes.apell2{
                    Text(apell2)
                }
                Spacer()
            }
            #endif
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}

//#Preview {
struct EmpleadoRowView_preview: PreviewProvider{
    static var previews: some View{
        EmpleadoRowView(emplooyes: Empleados(nombre: "Rocio", apell1: "Martos", apell2: "Vela", idPhoto: "", edad: 25))
             //.previewLayout(.fixed(width: 400, height: 200))
    }
}
