//
//  LoginView.swift
//  kcHerosClase
//
//  Created by Rocio Martos on 16/4/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Text("Test")
    }
}

#Preview {
    Group{
        LoginView()
            .environment(\.locale, .init(identifier: "es"))
        LoginView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
