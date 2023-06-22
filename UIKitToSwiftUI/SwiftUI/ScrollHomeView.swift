//
//  ScrollHomeView.swift
//  UIKitToSwiftUI
//
//  Created by Kaplan2 on 22/06/23.
//

import SwiftUI

struct ScrollHomeView: View {
     var imagesArray: [String]
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(imagesArray,id: \.self) { image in
                    Image(image).resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 200,maxHeight: 200)
                }
            }.padding(.horizontal)
        }
    }
}

struct ScrollHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollHomeView(imagesArray: ["umbagog","twinlake","turtlerock","turtlerock_feature"
                                     ,"stmarylake","stmarylake_feature","silversalmoncreek"])
    }
}
