//
//  ResortView.swift
//  SnowSeeker
//
//  Created by Ernest Morgan on 06/06/2026.
//

import SwiftUI

struct ResortView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    @Environment(Favourites.self) var favourites
    
    @State private var selectedFacility: Facility?
    @State private var showingFacility = false
    
    let resort: Resort
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                
                Image(decorative: resort.id)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    if horizontalSizeClass == .compact && dynamicTypeSize > .large {
                        VStack(spacing:10) {
                            ResortDetailsView(resort: resort)
                        }
                        VStack(spacing:10) {
                            SkiDetailsView(resort: resort)
                        }
                    } else {
                        ResortDetailsView(resort: resort)
                        SkiDetailsView(resort: resort)
                    }
                    
                    
                }
                .padding(.vertical)
                .background(
                            LinearGradient(
                                colors: [.blue, .white],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                .dynamicTypeSize(...DynamicTypeSize.xxxLarge)
                
                Group {
                    Text(resort.description)
                        .padding(.vertical)
                    Text("Facilities")
                        .font(.headline)
                    HStack {
                        ForEach(resort.facilityTypes) { facility in
                            Button {
                                selectedFacility = facility
                                showingFacility = true
                            } label: {
                                facility.icon
                                    .font(.title)
                            }
                            .buttonStyle(.glass)
                        }
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
                
                Button(favourites.contains(resort) ? "Remove from Favourites" : "Add to Favourites") {
                    if favourites.contains(resort) {
                        favourites.remove(resort)
                    } else {
                        favourites.add(resort)
                    }
                }
                .buttonStyle(.glassProminent)
                .padding()
            }
        }
        .navigationTitle("\(resort.name), \(resort.country)")
        .navigationBarTitleDisplayMode(.inline)
        .alert(selectedFacility?.name ?? "More information", isPresented: $showingFacility, presenting: selectedFacility) { _ in
        } message: { facility in
            Text(facility.description)
        }
    }
}

#Preview {
    ResortView(resort: .example)
        .environment(Favourites())
}
