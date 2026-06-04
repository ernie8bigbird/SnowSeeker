//
//  SheetAlertsView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 04/06/2026.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct SheetAlertsView: View {
    
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Button("Tap Me") {
            selectedUser = User()
            isShowingUser = true
        }
        .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
            Button(user.id) { }
        }
    }
}

#Preview {
    SheetAlertsView()
}
