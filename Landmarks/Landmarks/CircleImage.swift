//
//  CircleImage.swift
//  Landmarks
//
//  Created by 김규철 on 2023/03/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay { //Create another circle with a gray strok => border
                Circle().stroke(.pink, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
