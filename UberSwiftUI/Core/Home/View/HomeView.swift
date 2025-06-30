//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by Aditya Bhardwaj on 30/06/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if !showLocationSearchView {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation {
                            showLocationSearchView.toggle()
                        }
                    }
            } else {
                LocationSearchView()
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeView()
}
