//
//  modaalsView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct modaalsView: View {
    @State var sowhDetail = false
    var body: some View {
        Button{
            
        } label:{ Text("Show model")
        }
            .sheet(isPresented: $sowhDetail, content: {
             modalDetailView(showDetail: $sowhDetail)
            })
}
               }
              
struct modalDetailView: View{
    @Binding var showDetail: Bool
    @Environment(\.presentationMode) private var presentation
    var body: some View{
        VStack{
            Text("Detail Modal ")
                .padding(20)
            Button(action: {
                presentation.wrappedValue.dismiss()
                
            }, label: {
                Text("Cerrar modal")
                    .padding()
                
            })
        }
        
    }
}
#Preview {
    modaalsView()
}
