//
//  Lista04View.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct Lista04View: View {
   @State var bestFriend = ["Juan", "María", "Luis"]
    var body: some View {
        NavigationView{
            List{
                ForEach(bestFriend, id:\.self){ data in
                    Text(data)
                        .swipeActions(edge: .trailing, allowsFullSwipe: false){
                            Button(action: {}, label: {
                                Label("Silenciar", systemImage: "bell")
                            })
                            .tint(.blue)
                            Button(action: {}, label: {
                                Label("Video", systemImage: "video.fill")
                            })
                            .tint(.green)
                            
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            Button(action: {}, label: {
                                Label("Llamar", systemImage: "phone")
                            })
                            .tint(.blue)
                            
                            
                        }
                    
                    
                }
                
            }
            .navigationTitle("Amigos")
            .navigationBarTitleDisplayMode(.inline)
        }
        .refreshable {
            //Llamaria al vm para recargar heroes...
            self.bestFriend.append("Nuevo amigo")
        }
        
    }
}

#Preview {
    Lista04View()
}
