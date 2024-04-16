//
//  FormView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct FormView: View {
    @State  var name: String = ""
    @State  var apell1: String = ""
    @State  var apell2: String = ""
    @State var hasChildren: Bool = false
    var categories = ["Programador", "Analista", "Full Stack", "Diseñador", "Jefe Proyectos"]
    @State  var selectedCategory = "Analista"
    var body: some View {
        NavigationStack{
            Form(){
                Section{
                    TextField("Nombre", text: $name)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    TextField("Apellido1", text: $apell1)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    TextField("Apellido2", text: $apell2)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                }header: {
                    Text("Datos Empleado")
                }
                Section{
                    Toggle("Tiene Hijos?", isOn: $hasChildren)
                }
                Section {
                    Picker("Categoria Empleado", selection: $selectedCategory) {
                        ForEach(categories, id: \.self){ data in
                            Text("\(data)")
                        }
                    }
                    .pickerStyle(.menu)
                } header: {
                    Text("Datos Laborales")
                } footer: {
                    Text("Rellena los datos de tu categoria")
                }
                Section{
                    HStack{
                        Spacer()
                        
                        Button(action:{
                            
                        }, label: {
                            
                            Text("Button")
                        })
                        .foregroundColor(.white)
                        Spacer()
                    }
                    
                }
                .listRowBackground(Color.orange)
            }
        }
    }
}
#Preview {
    FormView()
}
