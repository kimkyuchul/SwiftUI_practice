//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김규철 on 2023/03/23.
//

import SwiftUI

struct LandmarkList: View {
//     some <- 해당 프로토콜에 해당하는 요소를 추가해라
    var body: some View {
//        Key Path 방법 활용
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
//        Identifiable Protocol
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
