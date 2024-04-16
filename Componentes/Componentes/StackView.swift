//
//  01StackView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack{
            Text("Hola ")
            Spacer()
            Text("Keepcoders")
            Spacer()
            Text("Esto es swiftUI")
        }
        .font(.title)
        .foregroundColor(.white)
        .frame(width: 300, height: 300)
        .background(Color.blue)
        //.cornerRadius(30)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        
        
    }
}

#Preview {
    StackView()
}
