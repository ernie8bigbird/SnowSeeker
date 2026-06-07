//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 06/06/2026.
//

import SwiftUI

struct SkiDetailsView: View {
    
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Elevation")
                    .font(.caption.bold())
                Text("\(resort.elevation)m")
                    .font(.title3)
            }
            .padding(10)
            .glassEffect(.regular, in: .rect(cornerRadius: 16))
            
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
            .padding(10)
            .glassEffect(.regular, in: .rect(cornerRadius: 16))
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SkiDetailsView(resort: .example)
}
