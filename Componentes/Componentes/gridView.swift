//
//  gridView.swift
//  Componentes
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI
struct employeesData: Identifiable{
    let id = UUID()
    let name: String
    let edad: Int
}
struct gridView: View {
    let employees = [
        employeesData(name: "Jose Luis", edad: 48),
        employeesData(name: "Gema Yanos", edad: 45),
        employeesData(name: "Javier Moreno", edad: 25),
        employeesData(name: "Rocio Martos", edad: 25),
        employeesData(name: "Jose Bueno", edad: 35),
        employeesData(name: "Alejandro Martinez", edad: 35)
        
]
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 2), content: {
            ForEach(employees){employees in
                Text(employees.name)
                    .font(.caption)
                    .foregroundStyle(.white)
            }
                    .frame(width: 150, height: 100)
                    .background(.blue)
            
        })
    }
}

#Preview {
    gridView()
}
