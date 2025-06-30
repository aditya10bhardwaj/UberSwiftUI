//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by Aditya Bhardwaj on 30/06/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
