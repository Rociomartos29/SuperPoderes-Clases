//
//  ImagenView.swift
//  Componentes
//
//  Created by Rocio Martos on 15/4/24.
//

import SwiftUI

struct ImagenView: View {
    var body: some View {
        VStack{
            Image(systemName: "house.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFit()
            Divider()
            AsyncImage(url: URL(string: "https://i.blogs.es/9d9332/stevejobs/450_1000.webp")) { Image in
                Image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.red))
                    .scaleEffect(4)
                    //.padding(.top, 100)
            }

        }
    }
}

#Preview {
    ImagenView()
}
