//
//  ContentView.swift
//  KeepcodingMultiPlataforma
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    private var Employees = getTestData()
    var body: some View {
        NavigationStack{
            List{
            }
            ForEach( Employees){employees in
                NavigationLink{
                    EmpleadoDetailView(employee: employees)
                }label:{
                    EmpleadoRowView(emplooyes: employees)
                }
               
                
            }
        }
    }
}

#Preview {
    ContentView()
}




// Devuelve un array de empleados.... solo para pruebas... esto se haría en el viewModel de MVVM
func getTestData() -> [Empleados]{
     return [
        Empleados( nombre: "David", apell1: "Martin", apell2: "Aguirre", idPhoto: "01", edad: 40),
        Empleados( nombre: "Lorena", apell1: "Franquite", apell2: nil, idPhoto: "01", edad: 61), //extrangero sin apellido 2
        Empleados( nombre: "Macarena", apell1: "Cabero", apell2: "Garcia", idPhoto: "01", edad: 55),
        Empleados( nombre: "Luis", apell1: "Bustos", apell2: "Esteban", idPhoto: "01", edad: 37),
        Empleados( nombre: "Juan", apell1: "Canus", apell2: "Llorens", idPhoto: "01", edad: 24),
        Empleados( nombre: "Diego", apell1: "Sanchez", apell2: "Martinex", idPhoto: "01", edad: 30),
        Empleados( nombre: "Lourdes", apell1: "Martin", apell2: "Escribano", idPhoto: "01", edad: 20)

     ]

}
