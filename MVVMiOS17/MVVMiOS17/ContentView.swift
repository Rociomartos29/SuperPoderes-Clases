//
//  ContentView.swift
//  MVVMiOS17
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

import Combine

/*
 MVVM .ios13- 16
 */
struct Person: Codable{
    let id: UUID
    let name: String
    let apells: String
    let nif: String
    
}

enum Estados{
    case none, loading, loaded, error
}

@Observable
final class ViewModelPerson{
    var data: Person?
    var estado = Estados.none
    
    init(){
        loadPerson()
    }
    func loadPerson(){
        estado = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            self.data = Person(id: UUID(), name: "Rocío", apells: "Martos Vela", nif: "89948509")
            self.estado = .loaded
        }
    }
}




struct ContentView: View{
  @State private var vm = ViewModelPerson()
    
    
    var body: some View{
        switch vm.estado{
        case Estados.none:
            Text("Estado none")
        case Estados.loading:
            Text("Cargando datos")
        case Estados.error:
            Text("Error")
        case Estados.loaded:
            VStack{
                if let data = vm.data{
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50,height: 50)
                    Text("\(data.name)\(data.apells)")
                }else{
                    Text("No data")
                }
            }
            
        }
    }
    
    
}

#Preview {
    ContentView()
}
