//
//  HomeView.swift
//  UIKitToSwiftUI
//
//  Created by Kaplan2 on 21/06/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image("charleyrivers_feature")
                .resizable()
                .aspectRatio(3/2, contentMode: .fit)
        }.padding(.horizontal)
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
