import SwiftUI
import Combine
import PlaygroundSupport
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


final class ViewModelPerson: ObservableObject{
    @Published var data: Person?
    @Published var estado = Estados.none
    
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
  @StateObject private var vm = ViewModelPerson()
    
    
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
PlaygroundPage.current.setLiveView(ContentView().frame(width: 200, height: 200))
