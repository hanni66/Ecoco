//
//  MapView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI
import MapKit

// swiftUI mapkit 하는 방법 배워서 넣기

struct MapView: View {
    var body: some View {
        VStack{
            Text("MapView")
            Text("검색")
                .frame(width: 350, height: 40)
                .background(Color.gray)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 350, height: 600)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
