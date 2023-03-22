//
//  ContentView.swift
//  Landmarks
//
//  Created by 김규철 on 2023/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, kyuchul")
                    .font(.title)
                HStack {
                    Text("kyuchulkim")
                    Spacer()
                    Text("hothot")
                }
                .font(.subheadline)
                .foregroundColor(.green)
                
                Divider()
                
                Text("kyuchulkimkyuchulkim")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
