//
//  hsizeAndViewthatfitsView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 05/06/2026.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name")
            Text("Address")
            Text("Email")
        }
        .font(.title)
    }
}

struct hsizeAndViewthatfitsView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            VStack {
                UserView()
            }
        } else {
            HStack {
                UserView()
            }
        }
        
        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)
            
            Circle()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    hsizeAndViewthatfitsView()
}
