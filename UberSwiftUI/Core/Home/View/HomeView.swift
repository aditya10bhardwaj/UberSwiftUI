//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by Aditya Bhardwaj on 30/06/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var mapState: MapViewState = .noInput
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable(mapState: $mapState)
                .ignoresSafeArea()
            
            if mapState == .noInput {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation {
                            mapState = .searchingForLocation
                        }
                    }
            } else if mapState == .searchingForLocation {
                LocationSearchView(mapState: $mapState)
            }
            
            MapViewActionButton(mapState: $mapState)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
