//
//  SideBySideView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 04/06/2026.
//

import SwiftUI

struct SideBySideView: View {
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all)) {
            NavigationLink("Primary") {
                Text("New View")
            }
        } detail: {
            Text("Some Content")
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    SideBySideView()
}
