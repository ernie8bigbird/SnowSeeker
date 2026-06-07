//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 06/06/2026.
//

import SwiftUI

struct ResortDetailsView: View {
    
    let resort: Resort
    
    var size: String {
        switch resort.size {
        case 1: "Small"
        case 2: "Average"
        default: "Large"
        }
    }
    
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }
            .padding(10)
            .glassEffect(.regular, in: .rect(cornerRadius: 16))
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
            .padding(10)
            .glassEffect(.regular, in: .rect(cornerRadius: 16))
            
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ResortDetailsView(resort: .example)
}
