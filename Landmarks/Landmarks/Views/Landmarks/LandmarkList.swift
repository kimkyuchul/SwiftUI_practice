//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김규철 on 2023/03/23.
//

import SwiftUI

struct LandmarkList: View {
    // Obervable Object의 값이 변경되면 현재 뷰를 업데이트
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
//     some <- 해당 프로토콜에 해당하는 요소를 추가해라
    var body: some View {
//        Key Path 방법 활용
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
//        Identifiable Protocol
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                //정적 뷰와 동적 뷰를 리스트에서 같이 띄워주기 위함
                ForEach(filteredLandmarks) { landmark in
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
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
